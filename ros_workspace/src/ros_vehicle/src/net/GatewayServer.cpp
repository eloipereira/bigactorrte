// ==========================================================================
// Copyright (C) 2013 Portuguese Air Force Academy                          =
// Research Center                                                          =
// Granja do Marques, Academia, Pero-Pinheiro                               =
// ==========================================================================
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software Foundation,
// Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
// ==========================================================================
// Project: ros_vehicle-Debug@ros_vehicle
// Date:    9:37:15 AM                                
// Author:  posilva                                
// -------------------------------------------------------------------------=
// Change Log:                                                         
// -------------------------------------------------------------------------=
// Date       / Author              /Description                          
// ==========================================================================
// Description: GatewayServer.cpp
// 
// ==========================================================================

#include <net/GatewayServer.h>

GatewayServer::GatewayServer() :
    ROSNode(), socket_(0), port_(DEFAULT_SERVICE_PORT), vehicle_id_(0)

{

  setupSocketType();
  setReuseAddress(1);
  setNonBlocking();
}

GatewayServer::~GatewayServer()
{
  close();
  for (int i = 0; i < masters_.size(); ++i)
  {
    delete masters_[i].client;
  }
}
void
GatewayServer::setupAddress()
{
  memset(&address_, 0, sizeof(address_));
  address_.sin_family = AF_INET;
  address_.sin_addr.s_addr = htonl(INADDR_ANY );
  address_.sin_port = htons(port_);
}

void
GatewayServer::setupBindAndListen()
{
  if (bind(socket_, (struct sockaddr*)(&address_), sizeof(address_)) < 0)
  {
    throw ROSVehicleException("failed to bind");
  }

  if (listen(socket_, LISTEN_BLOG) < 0)
  {
    throw ROSVehicleException("failed to listen");
  }

}

void
GatewayServer::setReuseAddress(bool yes)
{
  int v = yes ? 1 : 0;
  if (setsockopt(socket_, SOL_SOCKET, SO_REUSEADDR, &v, sizeof(v)) == -1)
  {
    perror("");
    throw ROSVehicleException("failed set reuse address option");
  }
}

void
GatewayServer::setNonBlocking()
{
  fcntl(socket_, F_SETFL, O_NONBLOCK);
}

void
GatewayServer::setupIOMultiplex()
{
  FD_ZERO(&master);
  FD_ZERO(&read_fds);
  FD_SET(socket_, &master);
  fdmax = socket_;
}

void
GatewayServer::setupSocketType()
{

  if ((socket_ = ::socket(AF_INET, SOCK_STREAM, 0)) < 0)
  {
    throw ROSVehicleException("failed to create socket");
  }

}

void
GatewayServer::close()
{
  shutdown(socket_, SHUT_RDWR);
  ::close(socket_);
}

template<typename T>
  void
  GatewayServer::createGatewayDataMsg(uint8_t type, const T& msg,
      ros::SerializedMessage*gd)
  {
    namespace ser = ros::serialization;
    ros::SerializedMessage m = ser::serializeMessage(msg);

    ros_vehicle_msgs::GatewayData gwData;

    gwData.src_id = vehicle_id_;
    gwData.msg_type = type;
    gwData.serialized.insert(gwData.serialized.begin(), m.message_start,
                             m.message_start + m.num_bytes);
    *gd = ser::serializeMessage(gwData);
  }

void
GatewayServer::sendToSocket(const RemoteClient_t& c, size_t dsz, uint8_t* data)
{
  int rc = 0;
  rc = send(c.socket, data, dsz, 0);

  if (rc == -1)
  {
    if (errno == EHOSTUNREACH)
      ROS_ERROR("Unreacheable Host");
    else if (errno == ENETUNREACH)
      ROS_ERROR("Unreacheable Network");
    else
      ROS_ERROR("error sending data");
  }
}

void
GatewayServer::publishSerializedMessage(ros::SerializedMessage& serial)
{
  for (int i = 0; i < subscribers_.size(); ++i)
  {
    size_t dsz = serial.num_bytes + SERIAL_HEADER_SIZE + SERIAL_FOOTER_SIZE;
    uint8_t* data = new uint8_t[dsz];
    Utils::wrapGD(serial.message_start, serial.num_bytes, data, dsz);
    sendToSocket(subscribers_[i], dsz, data);
    ROS_INFO("data sent");
    delete[] data;
  }
}

/**
 *
 * @param msg
 */
void
GatewayServer::mse_callback(
    const big_actor_msgs::MissionStateEstimate::ConstPtr& msg)
{
  if (subscribers_.size() > 0)
  {
    ros::SerializedMessage serial;
    createGatewayDataMsg(ros_vehicle_msgs::GatewayData::GD_MSE, *msg, &serial);
    publishSerializedMessage(serial);
  }
}

void
GatewayServer::sse_callback(
    const big_actor_msgs::StructureStateEstimate::ConstPtr& msg)
{

  if (subscribers_.size() > 0)
  {
    ros::SerializedMessage serial;
    createGatewayDataMsg(ros_vehicle_msgs::GatewayData::GD_SSE, *msg, &serial);
    publishSerializedMessage(serial);
  }
}

std::string
GatewayServer::getMasterParameter(const std::string& param, int index)
{
  std::stringstream ss;
  ss << "master_" << param << "_" << index;
  std::string name = ss.str();
  return name;
}

void
GatewayServer::resetRemoteMaster(RemoteMaster_t& rm)
{
  rm.status = PS_SOT_1;
  rm.current = 0;
  rm.size = 0;
  rm.buffer.clear();
}

void
GatewayServer::setupParameters()
{
  int vid = 0;
  if (!this->getHandle().hasParam("/vehicle_id"))
  {
    throw ROSVehicleException("Vehicle Id Parameter Missing");
  }
  this->readParam("/vehicle_id", vid, vid);
  this->vehicle_id_ = vid;
  int p;
  this->readParam("port", p, DEFAULT_SERVICE_PORT);
  port_ = p;
  int num_masters;
  readParam("num_masters", num_masters, 0);

  ROS_INFO("Connect to %d remote masters", num_masters);
  for (int i = 1; i <= num_masters; ++i)
  {
    std::string host = getMasterParameter("host", i);
    std::string port = getMasterParameter("port", i);
    RemoteMaster_t rm;
    std::string empty = "";
    ROS_INFO("Params Host:%s, Port:%s", host.c_str(), port.c_str());
    if (readParam(host, rm.host, empty))
    {
      if (readParam(port, rm.port, 0))
      {
        ROS_INFO("added to %s masters", rm.host.c_str());
        resetRemoteMaster(rm);
        masters_.push_back(rm);
      }
    }
  }

}

void
GatewayServer::setupRemoteMasters()
{
  for (int i = 0; i < masters_.size(); ++i)
  {

    masters_[i].client = new GatewayClient(masters_[i].host, masters_[i].port);
    int retry = 0;
    bool failed = false;
    do
    {
      try
      {
        masters_[i].client->connect();
        Socket_t s = masters_[i].client->getSocket();
        addToIOMultiplex(&s);
        failed = false;
      }
      catch (std::exception& e)
      {
        ROS_WARN("Connection failed... retrying!: %s", e.what());
        retry++;
        sleep(1 * retry);
        failed = true;
      }
    }
    while (retry < 5 && failed);
    if (!failed)
    {
      ROS_INFO("Connected to %s:%d!", masters_[i].host.c_str(),
               masters_[i].port);
    }
    else
    {
      ROS_WARN("Connection to %s... failed!", masters_[i].host.c_str());
    }
  }
}

void
GatewayServer::setupNetwork()
{
  setupAddress();
  setupBindAndListen();
  setupIOMultiplex();
}

void
GatewayServer::setup()
{

  setupParameters();

  mse_pub_ = getHandle().advertise<big_actor_msgs::MissionStateEstimate>(
      MISSION_STATE_ESTIMATE_TOPIC, 10);
  sse_pub_ = getHandle().advertise<big_actor_msgs::StructureStateEstimate>(
      STRUCTURE_STATE_ESTIMATE_TOPIC, 10);
  sse_sub_ = getHandle().subscribe(STRUCTURE_STATE_ESTIMATE_TOPIC, 10,
                                   &GatewayServer::sse_callback, this);
  mse_sub_ = getHandle().subscribe(MISSION_STATE_ESTIMATE_TOPIC, 10,
                                   &GatewayServer::mse_callback, this);

  setupNetwork();
  setupRemoteMasters();
}

void *
getInternetAddress(struct sockaddr *sa)
{
  if (sa->sa_family == AF_INET)
  {
    return &(((struct sockaddr_in*)sa)->sin_addr);
  }

  return &(((struct sockaddr_in6*)sa)->sin6_addr);
}

void
GatewayServer::closeClientConnection(int clientFd)
{
  ::close(clientFd);
  FD_CLR(clientFd, &master);
  for (int i = 0; i < clientFd; ++i)
  {
    if (clientFd == subscribers_[i].socket)
    {
      subscribers_.erase(subscribers_.begin() + i);
      return;
    }
  }
}

ssize_t
GatewayServer::readFromSocket(GatewayClient& c, uint8_t * buf, size_t sz)
{
  return recv(c.getSocket(), buf, sz, 0);
}

void
GatewayServer::handleClientConnection(GatewayClient& c, DATA_ARRAY& data)
{
  bool failed = false;
  bool no_data = false;
  int nbytes;
  uint8_t buf[BUFFER_SIZE];
  while (!no_data)
  {
    if ((nbytes = readFromSocket(c, buf, BUFFER_SIZE)) <= 0)
    {
      if (nbytes == 0)
      {
        if (errno == EWOULDBLOCK || errno == EAGAIN)
        {
          no_data = true;
          //no data
          break;
        }
        else
        {
          failed = true;
          no_data = true;
        }
      }
      else
      {
        if (errno == EWOULDBLOCK || errno == EAGAIN)
        {
          no_data = true;
          //no data
          break;
        }
        else
        {
          failed = true;
          no_data = true;
        }
      }
      if (failed)
        closeClientConnection(c.getSocket());
    }
    else
    {
      data.insert(data.end(), buf, buf + nbytes);
    }
  }
}

void
GatewayServer::addToIOMultiplex(Socket_t* client)
{
  FD_SET(*client, &master);
  if (*client > fdmax)
  {
    fdmax = *client;
  }
}

void
GatewayServer::handleNewConnection(RemoteClient_t * client)
{
  ROS_INFO("handleNewConnection called");
  char remoteIP[INET_ADDRSTRLEN];
  struct sockaddr_storage remoteaddr;
  uint addrlen = sizeof(remoteaddr);

  client->socket = accept(socket_, (struct sockaddr*)(&remoteaddr), &addrlen);

  if (client->socket != -1)
  {
    addToIOMultiplex(&(client->socket));
    ROS_INFO(
        "new connection from %s on " "socket %d\n",
        inet_ntop(remoteaddr.ss_family, getInternetAddress((struct sockaddr* )&remoteaddr), remoteIP, INET_ADDRSTRLEN),
        client->socket);
  }
  else
  {
    ROS_ERROR("invalid socket");
  }
}

void
GatewayServer::poll(float timeout)
{
  struct timeval t;
  t.tv_sec = timeout;
  t.tv_usec = 0;
  if (select(fdmax + 1, &read_fds, NULL, NULL, &t) == -1)
  {
    throw ROSVehicleException("failed to call select");
  }
}

bool
GatewayServer::isReady(int client)
{
  return FD_ISSET(client, &read_fds);
}

bool
GatewayServer::parse(uint8_t ch, RemoteMaster_t& m)
{

  switch (m.status)
  {
    case PS_SOT_1:
      {

        resetRemoteMaster(m);
        if (ch == 0xCD)
        {
          m.buffer.push_back(ch);
          m.status = PS_SOT_2;
        }
        break;
      }
    case PS_SOT_2:
      {
        if (ch == 0xAB)
        {
          m.buffer.push_back(ch);
          m.status = PS_SIZE_1;
        }
        else
        {
          m.status = PS_SOT_1;
        }
        break;
      }
    case PS_SIZE_1:
      {

        m.buffer.push_back(ch);
        m.status = PS_SIZE_2;
        break;
      }
    case PS_SIZE_2:
      {

        m.buffer.push_back(ch);
        uint8_t s = sizeof(uint16_t);
        memcpy(&m.size, &(m.buffer[m.buffer.size() - s]), s);
        m.status = PS_MSG;
        break;
      }

    case PS_MSG:
      {

        m.buffer.push_back(ch);
        if (m.buffer.size() < (m.size + sizeof(uint16_t) * 2))
          m.status = PS_MSG;
        else
        {
          m.status = PS_CRC1;
        }
        break;
      }
    case PS_CRC1:
      {
        m.buffer.push_back(ch);
        m.status = PS_CRC2;
        break;
      }
    case PS_CRC2:
      {
        uint16_t crc, crc_check, crc_pos;
        m.buffer.push_back(ch);
        uint8_t s = sizeof(uint16_t);
        crc_pos = m.buffer.size() - s;
        memcpy(&crc, &(m.buffer[crc_pos]), s);
        crc_check = CRC16::check(&(m.buffer[0]), m.buffer.size() - s);
        if (crc == crc_check)
        {
          return true;
        }
        else
        {
          m.status = PS_SOT_1;
        }
        break;
      }
  }
  return false;
}

void
GatewayServer::readFromMasters()
{
  for (int i = 0; i < masters_.size(); ++i)
  {
    RemoteMaster_t m = masters_[i];
    Socket_t c = m.client->getSocket();

    if (isReady(c))
    {
      DATA_ARRAY data;
      handleClientConnection(*m.client, data);
      if (data.size() > 0)
      {
        for (int j = 0; j < data.size(); ++j)
        {
          uint8_t ch = data[j];
          if (parse(ch, m))
          {
            republishMsgToInternalNetwork(m);

          }
        }
      }
    }
  }
}

void
GatewayServer::republishMsgToInternalNetwork(const RemoteMaster_t& m)
{
  namespace ser = ros::serialization;
  ros_vehicle_msgs::GatewayData gd;

  ser::IStream sGD(
      const_cast<uint8_t*>(m.buffer.data()) + SERIAL_HEADER_SIZE,
      m.buffer.size()
          - (ROS_SERIALIZATION_OFFSET + SERIAL_HEADER_SIZE + SERIAL_FOOTER_SIZE));
  ser::deserialize(sGD, gd);

  ser::IStream sMSG(gd.serialized.data(),
                    gd.serialized.size() - ROS_SERIALIZATION_OFFSET);

  if (gd.msg_type == ros_vehicle_msgs::GatewayData::GD_MSE)
  {
    big_actor_msgs::MissionStateEstimate mse;
    ser::deserialize(sMSG, mse);
    this->mse_pub_.publish(mse);
  }
  else
  {
    big_actor_msgs::StructureStateEstimate sse;
    ser::deserialize(sMSG, sse);
    this->sse_pub_.publish(sse);
  }
}
void
GatewayServer::loop()
{
  read_fds = master;
  poll(1.0);

  if (isReady(socket_))
  {
    RemoteClient_t c;
    handleNewConnection(&c);
    if (c.socket > 0)
    {
      subscribers_.push_back(c);
    }

  }
  readFromMasters();
}
