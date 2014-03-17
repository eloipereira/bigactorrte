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
// Date:    10:29:33 PM                                
// Author:  posilva                                
// -------------------------------------------------------------------------=
// Change Log:                                                         
// -------------------------------------------------------------------------=
// Date       / Author              /Description                          
// ==========================================================================
// Description: GatewayClient.cpp
// 
// ==========================================================================

#include <net/GatewayClient.h>

void
GatewayClient::setupAddressAndPort(const std::string& host, uint16_t port)
{
  hostent* server = gethostbyname(host.c_str());
  if (server == NULL)
  {
    throw ROSVehicleException("Failed to get hostname");
  }
  memset(&address_, 0, sizeof(address_));
  memcpy((char *)server->h_addr, (char *)&address_.sin_addr.s_addr, server->h_length);
  address_.sin_family = AF_INET;
  address_.sin_port = htons(port);
}

void
GatewayClient::setNonBlocking()
{
  fcntl(socket_, F_SETFL, O_NONBLOCK);
}

void
GatewayClient::setupIOMultiplexing()
{
  FD_ZERO(&master);
  FD_ZERO(&read_fds);
  FD_SET(socket_, &master);
  fdmax = socket_;
}

GatewayClient::GatewayClient(std::string host, uint16_t port, bool tcp) :
    tcp_(tcp)
{
  if (tcp_)
  {
    if ((socket_ = ::socket(AF_INET, SOCK_STREAM, 0)) < 0)
    {
      throw ROSVehicleException("failed to create socket TCP");
    }
  }
  else
  {
    if ((socket_ = ::socket(AF_INET, SOCK_DGRAM, 0)) < 0)
    {
      throw ROSVehicleException("failed to create socket UDP");
    }
  }

  setupAddressAndPort(host, port);

  setNonBlocking();

  setupIOMultiplexing();
}

GatewayClient::~GatewayClient()
{
  close();
}

void
GatewayClient::connect()
{
  if (tcp_)
  {
    if (::connect(socket_, (sockaddr*)&address_, sizeof(address_)) < 0)
      throw ROSVehicleException("Failed to connect");
  }
  else
  {
    if (::bind(socket_, (struct sockaddr*)(&address_), sizeof(address_)) < 0)
    {
      throw ROSVehicleException("failed to bind");
    }
  }

}

void
GatewayClient::poll(float timeout)
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
GatewayClient::isReady()
{
  return FD_ISSET(socket_, &read_fds);
}

int
GatewayClient::read(uint8_t* buffer, size_t size)
{
  poll(1.0);
  if (isReady())
    return ::read(socket_, buffer, size);
  else
    return 0;
}

int
GatewayClient::write(uint8_t* buffer, size_t size)
{
  return ::write(socket_, buffer, size);
}

void
GatewayClient::close()
{
  shutdown(socket_, SHUT_RDWR);
  ::close(socket_);
}
