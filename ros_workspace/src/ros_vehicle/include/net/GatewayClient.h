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
// Description: GatewayClient.h
// 
// ==========================================================================

#ifndef GATEWAYCLIENT_H_
#define GATEWAYCLIENT_H_
#include <string>
#include <net/Gateway.h>
/*
 *
 */
class GatewayClient
{
public:
  GatewayClient(std::string host, uint16_t port, bool tcp=false);
  virtual
  ~GatewayClient();
  void
  connect();
  int
  read(uint8_t* buffer, size_t size);
  int
  write(uint8_t* buffer, size_t size);
  void
  close();

  Socket_t
  getSocket() const
  {
    return socket_;
  }

  const AddressIn_t&
  getAddress() const
  {
    return address_;
  }

private:
  bool tcp_;
  Socket_t socket_;
  AddressIn_t address_;
  fd_set master;    // master file descriptor list
  fd_set read_fds;  // temp file descriptor list for select()
  int fdmax;        // maximum file descriptor number
  void
  setupAddressAndPort(const std::string& host, uint16_t port);
  void
  setNonBlocking();
  void
  setupIOMultiplexing();
  void
  poll(float timeout);
  bool
  isReady();
};

#endif /* GATEWAYCLIENT_H_ */
