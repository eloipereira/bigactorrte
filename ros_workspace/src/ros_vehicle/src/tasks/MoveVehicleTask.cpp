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
// Date:    11:37:28 PM                                
// Author:  posilva                                
// -------------------------------------------------------------------------=
// Change Log:                                                         
// -------------------------------------------------------------------------=
// Date       / Author              /Description                          
// ==========================================================================
// Description: MoveVehicleTask.cpp
// 
// ==========================================================================

#include <tasks/MoveVehicleTask.h>
#include <common/Definitions.h>
#include <utils/JSON.h>
#include <cmath>
#include <utils/Geodetic.h>
MoveVehicleTask::MoveVehicleTask(TaskManager* tm, uint64_t tid,
    std::string params) :
    Task(tm, tid, params)
{

}

MoveVehicleTask::~MoveVehicleTask()
{

}

bool
MoveVehicleTask::getUAVWaypoint(ros_vehicle_msgs::Waypoint* wp)
{
  //! ask mission manager what is the uav_wp
  ros_vehicle_msgs::GetUAVWaypoint service;
  if (ros::service::call("/get_uav_wp", service))
  {
    if (service.response.result.ok)
    {
      *wp = service.response.waypoint;
    }
    else
    {
      ROS_ERROR("Missing uav waypoint definitions");

      return false;
    }
  }
  else
  {
    ROS_ERROR("Failed to invoke service 'get_uav_wp'");
    return false;
  }
  return true;
}

bool
MoveVehicleTask::updateWaypoint(ros_vehicle_msgs::Waypoint& wp)
{
  //! send updateposition message to the piccolo_driver
  ros_vehicle_msgs::UpdateWaypoint srv;
  srv.request.wp = wp;
  if (ros::service::call("/update_waypoint", srv))
  {
    if (!srv.response.result.ok)
      ROS_ERROR("Update Waypoint position failed: %s",
                srv.response.result.error.c_str());
      return false;
  }else
    return false;
  return true;
}

void
MoveVehicleTask::start()
{
  ros_vehicle_msgs::Waypoint wp;
  //! parse parameters to create a waypoint
  Json::Reader reader;
  Json::Value root;
  float latitude, longitude, altitude;

  ROS_INFO("Task Parameters; %s", this->getParams().c_str());
  if (reader.parse(this->getParams(), root, false))
  {
    latitude = root["latitude"].asFloat();
    longitude = root["longitude"].asFloat();
    altitude = root["altitude"].asFloat();
  }
  //! ask mission manager what is the uav_wp
  this->failed_ = !getUAVWaypoint(&(this->move_waypoint_));
  //! update with the new location
  this->move_waypoint_.position.latitude = latitude;
  this->move_waypoint_.position.longitude = longitude;
  this->move_waypoint_.position.altitude = altitude;
  this->move_waypoint_.loiter.active = false;

  //! send updateposition message to the piccolo_driver
  this->failed_ = !updateWaypoint(this->move_waypoint_);
}

void
MoveVehicleTask::stop()
{

}

void
MoveVehicleTask::finish()
{

  vehicle_state_sub_.shutdown();
}

void
MoveVehicleTask::cancel()
{
  finish();
}

bool
MoveVehicleTask::isDone()
{
  return done_;
}

bool
MoveVehicleTask::isFailed()
{
  /*
  ros_vehicle_msgs::Waypoint wp;
  this->getUAVWaypoint(&wp);
  if (this->move_waypoint_.position.latitude!=wp.position.latitude ||
      this->move_waypoint_.position.longitude!=wp.position.longitude ){
    failed_=true;
  }
  */
  return failed_;
}

void
MoveVehicleTask::vehicleStateCallback(
    const ros_vehicle_msgs::VehicleState::ConstPtr& msg)
{

  Geodetic::ENU enu = Geodetic::llh2enu_deg(
      this->move_waypoint_.position.latitude,
      this->move_waypoint_.position.longitude,
      this->move_waypoint_.position.altitude, msg->position.latitude,
      msg->position.longitude, msg->position.altitude);

  float d = sqrt(enu.e * enu.e + enu.n * enu.n + enu.u * enu.u);
  int goal = this->move_waypoint_.loiter.radius * 10 + 50;
  ROS_INFO("Distance:%d Goal: %d", (int )d, goal);
  if (((int)d) <= goal)
  {
    this->done_ = true;
  }
}

void
MoveVehicleTask::setup()
{
  vehicle_state_sub_ = getTm().getHandle().subscribe(
      VEHICLE_STATE_TOPIC, 10, &MoveVehicleTask::vehicleStateCallback, this);

}
