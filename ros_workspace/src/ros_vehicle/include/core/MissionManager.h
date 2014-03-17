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
// Date:    12:41:21 PM                                
// Author:  posilva                                
// -------------------------------------------------------------------------=
// Change Log:                                                         
// -------------------------------------------------------------------------=
// Date       / Author              /Description                          
// ==========================================================================
// Description: MissionManager.h
// 
// ==========================================================================

#ifndef MISSIONMANAGER_H_
#define MISSIONMANAGER_H_
#include <common/ROSVehicleMsgs.h>
#include <common/ROSNode.h>
#include <map>
typedef std::map<uint8_t, ros_vehicle_msgs::Waypoint> WaypointMap_t;

class MissionManager : ROSNode
{
public:
  MissionManager();
  virtual
  ~MissionManager();
  virtual void
  setup();
  virtual void
  loop();
protected:
  void
  track_statusCallback(const ros_vehicle_msgs::TrackStatus::ConstPtr& msg);
private:
  bool
  getUavWaypointCallback(ros_vehicle_msgs::GetUAVWaypoint::Request& request,
      ros_vehicle_msgs::GetUAVWaypoint::Response& response);
  ros::Subscriber trackStatus_sub_;
  ros_vehicle_msgs::Waypoint uav_wp_;
  uint64_t vehicle_id_;
  ros::ServiceServer get_uav_wp_server_;
};

#endif /* MISSIONMANAGER_H_ */
