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
// Date:    11:36:24 AM                                
// Author:  posilva                                
// -------------------------------------------------------------------------=
// Change Log:                                                         
// -------------------------------------------------------------------------=
// Date       / Author              /Description                          
// ==========================================================================
// Description: Main.cpp
// 
// ==========================================================================
#include <iostream>
#include <ros/ros.h>
#include <utils/CRC16.h>
#include <utils/Utils.h>
#include <big_actor_msgs/MissionStateEstimate.h>
#include <ros_vehicle_msgs/GatewayData.h>
#include <ros/serialized_message.h>
/*
void
test_serialization_process()
{
  namespace ser = ros::serialization;
  big_actor_msgs::MissionStateEstimate msg;
  msg.srcVehicleId = 1;
  ros_vehicle_msgs::GatewayData gd;
  ros::SerializedMessage m = ser::serializeMessage(msg);
  gd.serialized.insert(gd.serialized.begin(), m.message_start,
                       m.message_start + m.num_bytes);
  gd.msg_type = ros_vehicle_msgs::GatewayData::GD_MSE;
  m = ser::serializeMessage(gd);
  int t = m.num_bytes - (m.message_start - m.buf.get());
  ser::IStream sx(m.message_start, t);
  deserialize(sx, gd);

  size_t dsz = m.num_bytes + 6;
  uint8_t* data = new uint8_t[dsz];
  size_t sz = m.num_bytes;
  Utils::wrapGD(m.message_start, m.num_bytes, data, dsz);
  ser::IStream s(data + 4, dsz - 10);
  ser::deserialize(s, gd);
  ser::IStream s2(gd.serialized.data(), gd.serialized.size() - 4);
  ser::deserialize(s2, msg);
}
*/
int
main(int argc, char **argv)
{/*
  UDPSocket s;
  s.open(12000);
  s.bind();

  uint8_t buff[512];
  memset(buff, 0, 512);
  AddressIn_t ca;
  size_t n = s.read(buff, 512, ca);
  if (n!=-1)
    printf(">> %d: %s",n, buff);
*/
}

