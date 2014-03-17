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
// Date:    10:43:05 PM                                
// Author:  posilva                                
// -------------------------------------------------------------------------=
// Change Log:                                                         
// -------------------------------------------------------------------------=
// Date       / Author              /Description                          
// ==========================================================================
// Description: Gateway.h
// 
// ==========================================================================

#ifndef GATEWAY_H_
#define GATEWAY_H_

//!
#include <ros/ros.h>
#include <big_actor_msgs/StructureStateEstimate.h>
#include <big_actor_msgs/MissionStateEstimate.h>
#include <ros_vehicle_msgs/GatewayData.h>
//!
#include <utils/Utils.h>
#include <common/Definitions.h>
#include <net/NetDefinitions.h>
//!
#include <ctime>
#include <vector>

//!
static const int ROS_SERIALIZATION_OFFSET = 4;
static const int SERIAL_HEADER_SIZE = 4;
static const int SERIAL_FOOTER_SIZE = 2;
static const int DEFAULT_SERVICE_PORT = 5555;
static const int LISTEN_BLOG = 5;
//!
typedef std::vector<uint8_t> DATA_ARRAY;


#endif /* GATEWAY_H_ */
