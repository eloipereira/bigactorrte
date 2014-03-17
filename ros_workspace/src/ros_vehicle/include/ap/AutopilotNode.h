// ==========================================================================
// Copyright (C) 2013 Força Aérea Portuguesa - Academia                     =
// Centro de Investigação da Academiafa da Força Aérea                      =
// Granja do Marques, Academia, Pero-Pinheiro                               =
// ==========================================================================
// Project: ros_vehicle@ros_vehicle
// Date:    Apr 26, 2013                                
// Author:  posilva                                
// -------------------------------------------------------------------------=
// Change Log:                                                         
// -------------------------------------------------------------------------=
// Date       / Author              /Description                          
// ==========================================================================
// Description: AutopilotNode.h
// 
// ==========================================================================

#ifndef AUTOPILOTNODE_H_
#define AUTOPILOTNODE_H_

#include <map>
//! Include ROS related header files
#include <ros/ros.h>

//! Include local package related header files
#include <common/PiccoloMsgs.h>
#include <common/ROSVehicleMsgs.h>
#include <common/Commons.h>
#include <common/Definitions.h>
#include <common/ROSNode.h>
#include <common/Clock.h>

typedef std::map<uint16_t, piccolo_ros::PiccoloWaypoint> WaypointsDb_t;
static const int WAYPOINT_REFRESH_INTERVAL_DEFAULT = 5000;
class AutopilotNode : public ROSNode
{
public:
  AutopilotNode();
  virtual
  ~AutopilotNode();

  virtual void
  setup();
  virtual void
  loop();
protected:
  void
  piccoloTelemetryCallback(const piccolo_ros::PiccoloTelemetry::ConstPtr& msg);
  void
  piccoloStatusCallback(const piccolo_ros::PiccoloStatus::ConstPtr& msg);
  void
  piccoloWaypointCallback(const piccolo_ros::PiccoloWaypoint::ConstPtr& msg);
  void
  piccoloWaypointListCallback(const piccolo_ros::PiccoloWPList::ConstPtr& msg);
  bool
  requestWaypointsServiceCallback(ros_vehicle_msgs::GetWaypointsRequest& req,
      ros_vehicle_msgs::GetWaypointsResponse& res);
  bool
   updateWaypointServiceCallback(ros_vehicle_msgs::UpdateWaypoint::Request& req,
       ros_vehicle_msgs::UpdateWaypoint::Response& res);
private:
  //! ROS publishers
  ros::Publisher vehicle_state_publisher_;
  ros::Publisher track_status_publisher_;
  ros::Publisher waypoint_publisher_;
  ros::Publisher refresh_waypoint_publisher_;
  ros::Publisher update_waypoint_publisher_;
  //! ROS subscribers
  ros::Subscriber piccolo_status_subscriber_;
  ros::Subscriber piccolo_telemetry_subscriber_;
  ros::Subscriber piccolo_waypoint_subscriber_;
  ros::Subscriber piccolo_waypointlist_subscriber_;
  //! ROS Services
  ros::ServiceServer request_waypoints_server_;
  ros::ServiceServer updateWaypoint_server_;

  //! knowned waypoints
  WaypointsDb_t knowned_waypoints_;

  //! Waypoint refresh interval
  uint64_t waypoint_refresh_interval_;
  uint64_t last_waypoint_refresh_interval_;


  void
  refreshWaypoints();
  void
  PiccoloWP2ROSWP(const piccolo_ros::PiccoloWaypoint& msg,
      ros_vehicle_msgs::Waypoint& m);
};

#endif /* AUTOPILOTNODE_H_ */
