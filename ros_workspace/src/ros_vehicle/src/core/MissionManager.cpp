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
// Description: MissionManager.cpp
// 
// ==========================================================================

#include <core/MissionManager.h>
#include <common/PiccoloMsgs.h>
#include <common/Definitions.h>

MissionManager::MissionManager() :
    ROSNode(true), vehicle_id_(-1)
{

}

MissionManager::~MissionManager()
{
}

void
MissionManager::setup()
{

  int uav_wp = -1;
  if (!this->readParam("waypoint_move_id", uav_wp, uav_wp))
  {
    throw ROSVehicleException("Missing UAV Move Waypoint parameter");
  }
  this->uav_wp_.waypointId = uav_wp;

  int vid = -1;
  if (!this->readParam("/vehicle_id", vid, vid))
  {
    throw ROSVehicleException("Missing Vehicle ID parameter");
  }
  this->vehicle_id_ = vid;
  trackStatus_sub_ = getHandle().subscribe(
      TRACK_STATUS_TOPIC, 1, &MissionManager::track_statusCallback, this);

  get_uav_wp_server_ = getHandle().advertiseService(
      "/get_uav_wp", &MissionManager::getUavWaypointCallback, this);

}
bool
MissionManager::getUavWaypointCallback(
    ros_vehicle_msgs::GetUAVWaypoint::Request& request,
    ros_vehicle_msgs::GetUAVWaypoint::Response& response)
{

  response.waypoint = this->uav_wp_;
  response.result.ok = true;
  return true;
}

void
MissionManager::loop()
{

  ros_vehicle_msgs::GetWaypoints gwp;
  gwp.request.vehicleId = this->vehicle_id_;
  if (ros::service::call("get_waypoints", gwp))
  {
    gwp.response.waypoints;
    for (int i = 0; i < gwp.response.waypoints.size(); ++i)
    {
      if (this->uav_wp_.waypointId == gwp.response.waypoints[i].waypointId)
      {
        this->uav_wp_ = gwp.response.waypoints[i];
        break;
      }
    }
  }
}

void
MissionManager::track_statusCallback(
    const ros_vehicle_msgs::TrackStatus::ConstPtr& msg)
{

}

