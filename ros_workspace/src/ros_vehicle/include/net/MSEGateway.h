// ==========================================================================
// Copyright (C) 2013 Portuguese Air Force Academy                       =
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
// Description: MSEGateway.h
// 
// ==========================================================================

#ifndef MSEGATEWAY_H_
#define MSEGATEWAY_H_
#include <net/Gateway.h>
#include <net/GatewayClient.h>
#include <common/ROSNode.h>

enum ParseStatusEnum
{
  PS_SOT_1 = 0, PS_SOT_2, PS_SIZE_1, PS_SIZE_2, PS_MSG, PS_CRC1, PS_CRC2
};

typedef struct
{
  std::string host;
  int port;
} RemoteMaster_t;

typedef struct
{
  std::string host;
  int port;
  DATA_ARRAY buffer;
  int current;
  ParseStatusEnum status;
  uint16_t size;
} RemoteClient_t;
/*
 *
 */
class MSEGateway : public ROSNode
{
public:
  MSEGateway();
  virtual
  ~MSEGateway();
  virtual void
  setup();
  virtual void
  loop();
  static const int BUFFER_SIZE = 2048;
protected:
  void*
  getInternetAddress(struct sockaddr *sa);
  uint64_t vehicle_id_;
  //!
  ros::Publisher mse_pub_;
  ros::Publisher sse_pub_;
  ros::Subscriber sse_sub_;
  ros::Subscriber mse_sub_;

  //!
  std::vector<RemoteMaster_t*> masters_;
  std::vector<RemoteClient_t> clients_;
  AddressIn_t address_;
  Socket_t socket_;
  Port_t port_;
  //!
  void
  mse_callback(const big_actor_msgs::MissionStateEstimate::ConstPtr& msg);
  void
  sse_callback(const big_actor_msgs::StructureStateEstimate::ConstPtr& msg);

  //!
  void
  setupAddress();

  void
  setReuseAddress(bool yes);
  void
  close();
  void
  handleClientConnection(Socket_t & s, DATA_ARRAY& data);
  void
  closeClientConnection(int clientFd);
  template<typename T>
    void
    createGatewayDataMsg(uint8_t type, const T& m, ros::SerializedMessage*gd);
  void
  sendToAll(size_t s, uint8_t* payload);
  void
  setupParameters();
  std::string
  getMasterParameter(const std::string& param, int index);

  void
  readFromSubscribers();
  void
  readFromMasters();
  void
  setupRemoteMasters();
  bool
  parse(uint8_t ch, RemoteClient_t& m);
  void
  resetRemoteClient(RemoteClient_t& rm);
  void
  republishMsgToInternalNetwork(const RemoteClient_t& m);
  void
  publishSerializedMessage(ros::SerializedMessage& serial);
  fd_set master;    // master file descriptor list
  fd_set read_fds;  // temp file descriptor list for select()
  int fdmax;        // maximum file descriptor number
  void
  addToIOMultiplex(Socket_t* client);
  void
  setNonBlocking();
  void
  setupIOMultiplex();
  void
  setupBindAndListen();
  void
  acceptConenction(Socket_t& client);
  void
  poll(float timeout = 0);
  bool
  isReady(int client);

private:
  void
  setupNetwork();
  void
  setupSocketType();
  ssize_t
  readFromSocket(Socket_t socket, uint8_t * buf, size_t sz);
  void
  sendToSocket(const RemoteMaster_t& c, size_t dsz, uint8_t* data);
  void
  getMasterAddress(AddressIn_t& address, const std::string& host,
      const int& port);

};

#endif /* MSEGATEWAY_H_ */
