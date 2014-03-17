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
// Date:    1:21:21 PM                                
// Author:  posilva                                
// -------------------------------------------------------------------------=
// Change Log:                                                         
// -------------------------------------------------------------------------=
// Date       / Author              /Description                          
// ==========================================================================
// Description: UDPSocket.h
// 
// ==========================================================================

#ifndef UDPSOCKET_H_
#define UDPSOCKET_H_
#include <sstream>
#include <common/Commons.h>
#include <net/NetDefinitions.h>

/*
 *
 */
class UDPSocket
{
public:
  UDPSocket();
  virtual
  ~UDPSocket();
  void
  bind();
  void
  open(int port, std::string host = "", bool blocking = false);
  size_t
  read(uint8_t* buffer, size_t size, AddressIn_t& clientAddress);
  size_t
  write(uint8_t* buffer, size_t size);
  void
  setReuseAddress(bool status);
  void
  setNonBlocking(bool status);
  void
  close();

  Socket_t
  getHandle() const
  {
    return handle_;
  }

  const AddressIn_t&
  getAddress() const
  {
    return address_;
  }

  Port_t
  getPort() const
  {
    return port_;
  }

private:
  std::string host_;
  AddressIn_t address_;
  Socket_t handle_;
  Port_t port_;
  bool blocking_;
};

#endif /* UDPSOCKET_H_ */
