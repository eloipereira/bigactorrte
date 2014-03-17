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
// Date:    2:22:48 PM                                
// Author:  posilva                                
// -------------------------------------------------------------------------=
// Change Log:                                                         
// -------------------------------------------------------------------------=
// Date       / Author              /Description                          
// ==========================================================================
// Description: Utils.h
// 
// ==========================================================================

#ifndef UTILS_H_
#define UTILS_H_
#include <ros/ros.h>
#include <ros/serialization.h>
#include <big_actor_msgs/StructureStateEstimate.h>
#include <big_actor_msgs/MissionStateEstimate.h>
#include <ros_vehicle_msgs/GatewayData.h>
#include <utils/CRC16.h>
/*
 *
 */
class Utils
{
public:
  virtual
  ~Utils();




  static void
  wrapGD(uint8_t* serial, size_t& ssz, uint8_t* data, size_t& dsz)
  {
    uint16_t SOT = 0xABCD;
    memcpy(data, &SOT, sizeof(uint16_t));
    data += 2;
    memcpy(data, &ssz, sizeof(uint16_t));
    data += 2;
    memcpy(data, serial, ssz);
    data += ssz;
    uint16_t crc = CRC16::check(data-(dsz - 2), dsz - 2);
    memcpy(data, &crc, sizeof(uint16_t));

  }
  static uint8_t*
  serializeGD(const ros_vehicle_msgs::GatewayData& msg)
  {
    size_t serial_size = ros::serialization::serializationLength(msg);
    return serialize(serial_size, msg);

  }

  static uint8_t*
  serializeMSE(const big_actor_msgs::MissionStateEstimate& msg)
  {

    size_t serial_size = ros::serialization::serializationLength(msg);
    return serialize(serial_size, msg);

  }
  static uint8_t*
  serializeSSE(const big_actor_msgs::StructureStateEstimate& msg)
  {
    size_t serial_size = ros::serialization::serializationLength(msg);
    return serialize(serial_size, msg);

  }
  static void
  deserializeGD(uint8_t* data, size_t size, ros_vehicle_msgs::GatewayData& sse)
  {
    ros::serialization::IStream stream(data, size);
    ros::serialization::deserialize(stream, sse);
  }
  static void
  deserializeSSE(const ros_vehicle_msgs::GatewayData& msg,
      big_actor_msgs::StructureStateEstimate& sse)
  {

    ros::serialization::IStream stream((uint8_t*)&(msg.serialized[0]),
                                       msg.serialized.size());
    ros::serialization::deserialize(stream, sse);
  }
  static void
  deserializeMSE(const ros_vehicle_msgs::GatewayData& msg,
      big_actor_msgs::MissionStateEstimate& mse)
  {

    ros::serialization::IStream stream((uint8_t*)&(msg.serialized[0]),
                                       msg.serialized.size());
    ros::serialization::deserialize(stream, mse);

  }

private:
  Utils();
  Utils(const Utils& other);

  template<typename T>
    static inline uint8_t*
    serialize(uint32_t serial_size, const T& msg)
    {
      boost::shared_array<uint8_t> buffer(new uint8_t[serial_size]);
      ros::serialization::OStream stream(buffer.get(), serial_size);
      ros::serialization::serialize(stream, msg);
      uint8_t* data = stream.getData();
      return data;
    }
  template<typename T>
    static void
    deserialize(uint8_t* data, size_t size, T& msg)
    {
      ros::serialization::IStream stream(data, size);
      ros::serialization::deserialize(stream, msg);
    }

};

#endif /* UTILS_H_ */
