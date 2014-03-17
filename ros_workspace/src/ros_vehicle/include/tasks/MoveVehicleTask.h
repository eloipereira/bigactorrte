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
// Description: MoveVehicleTask.h
// 
// ==========================================================================

#ifndef MOVEVEHICLETASK_H_
#define MOVEVEHICLETASK_H_
#include <ros/ros.h>
#include <tasks/Task.h>
#include <tasks/TaskManager.h>
#include <common/ROSVehicleMsgs.h>
/*
 *
 */
class MoveVehicleTask : public Task
{
public:
  MoveVehicleTask(TaskManager*tm, uint64_t tid, std::string params);
  virtual
  ~MoveVehicleTask();
  virtual void
  start();
  virtual void
  stop();
  virtual void
  finish();
  virtual void
  cancel();
  virtual bool
  isDone();
  virtual bool
  isFailed();
  void
  vehicleStateCallback(const ros_vehicle_msgs::VehicleState::ConstPtr&msg);
private:
  ros::Subscriber vehicle_state_sub_;
  ros_vehicle_msgs::Waypoint move_waypoint_;

  bool
  getUAVWaypoint(ros_vehicle_msgs::Waypoint* wp);
  bool
  updateWaypoint(ros_vehicle_msgs::Waypoint& wp);

protected:
  virtual void
  setup();
};

#endif /* MOVEVEHICLETASK_H_ */
