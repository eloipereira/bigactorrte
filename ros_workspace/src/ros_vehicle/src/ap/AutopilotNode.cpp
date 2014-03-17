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
// Description: AutopilotNode.cpp
// 
// ==========================================================================

#include <ap/AutopilotNode.h>

AutopilotNode::AutopilotNode() :
    ROSNode(true), waypoint_refresh_interval_(
        WAYPOINT_REFRESH_INTERVAL_DEFAULT)
{
  last_waypoint_refresh_interval_ = 0;
}

AutopilotNode::~AutopilotNode()
{
}

void
AutopilotNode::setup()
{
  int refresh_wps_interval = 5;
  readParam("refresh_wps_interval", refresh_wps_interval, refresh_wps_interval);
  waypoint_refresh_interval_=refresh_wps_interval;
  //! Subscribers Setup
  this->piccolo_status_subscriber_ = getHandle().subscribe(
      "/piccolostatus", 100, &AutopilotNode::piccoloStatusCallback, this);
  this->piccolo_telemetry_subscriber_ = getHandle().subscribe(
      "/piccolotelemetry", 100, &AutopilotNode::piccoloTelemetryCallback, this);
  this->piccolo_waypoint_subscriber_ = getHandle().subscribe(
      "/piccolowaypoint", 100, &AutopilotNode::piccoloWaypointCallback, this);
  this->piccolo_waypointlist_subscriber_ = getHandle().subscribe(
      "/piccolowplist", 100, &AutopilotNode::piccoloWaypointListCallback, this);
  //! Publishers Setup
  this->vehicle_state_publisher_ = getHandle().advertise<
      ros_vehicle_msgs::VehicleState>(VEHICLE_STATE_TOPIC, 100);
  this->track_status_publisher_ = getHandle().advertise<
      ros_vehicle_msgs::TrackStatus>(TRACK_STATUS_TOPIC, 10);
  this->waypoint_publisher_ = getHandle().advertise<ros_vehicle_msgs::Waypoint>(
      WAYPOINT_TOPIC, 10);
  this->refresh_waypoint_publisher_ = getHandle().advertise<
      piccolo_ros::PiccoloRequestWaypoints>("/piccolorequestwaypoints", 10);
  this->update_waypoint_publisher_ = getHandle().advertise<
      piccolo_ros::PiccoloWaypoint>("/piccoloupdatewppos", 10);

  //! Service Servers Setup
  this->request_waypoints_server_ = getHandle().advertiseService(
      "/get_waypoints", &AutopilotNode::requestWaypointsServiceCallback, this);

  this->updateWaypoint_server_ = getHandle().advertiseService(
      "/update_waypoint", &AutopilotNode::updateWaypointServiceCallback, this);
}

bool
AutopilotNode::requestWaypointsServiceCallback(
    ros_vehicle_msgs::GetWaypointsRequest& req,
    ros_vehicle_msgs::GetWaypointsResponse& res)
{

  WaypointsDb_t::iterator it;
  for (WaypointsDb_t::iterator it = knowned_waypoints_.begin();
      it != knowned_waypoints_.end(); ++it)
  {
    ros_vehicle_msgs::Waypoint w;
    PiccoloWP2ROSWP((it->second), w);
    res.waypoints.push_back(w);
  }
  res.result.ok = true;
  return true;
}

void
AutopilotNode::refreshWaypoints()
{
  try
  {
    ROS_INFO("Refreshing WAYPOINTS");
    piccolo_ros::PiccoloRequestWaypoints m;
    refresh_waypoint_publisher_.publish(m);
  }
  catch (std::exception& e)
  {
    ROS_ERROR("Failed to  query_waypoints: %s", e.what());
  }
}

void
AutopilotNode::loop()
{
  uint64_t t = Clock::getTimeStamp()/1000;

  if (last_waypoint_refresh_interval_ + waypoint_refresh_interval_ < t)
  {
    refreshWaypoints();
    last_waypoint_refresh_interval_ = t;
  }
}

void
AutopilotNode::piccoloStatusCallback(
    const piccolo_ros::PiccoloStatus::ConstPtr& msg)
{
  ros_vehicle_msgs::TrackStatus m;
  m.vehicleId = msg->vehicleid;
  m.currWP = msg->wpFrom;
  m.targetWP = msg->wpTo;
  m.eta = msg->timeToWp;
  track_status_publisher_.publish(m);
}

void
AutopilotNode::piccoloWaypointListCallback(
    const piccolo_ros::PiccoloWPList::ConstPtr& msg)
{
  for (int i = 0; i < msg->list.size(); ++i)
  {
    ros_vehicle_msgs::Waypoint w;
    // knowned_waypoints_[msg->list[i]] = w;
  }
}

bool
AutopilotNode::updateWaypointServiceCallback(
    ros_vehicle_msgs::UpdateWaypoint::Request& req,
    ros_vehicle_msgs::UpdateWaypoint::Response& res)
{
  res.result.ok = true;
  WaypointsDb_t::iterator it = knowned_waypoints_.find(req.wp.waypointId);
  if (it == knowned_waypoints_.end())
  {
    res.result.ok = false;
    res.result.error = "Waypoint not found";

  }
  else
  {
    piccolo_ros::PiccoloWaypoint uwp = it->second;
    uwp.latitude = req.wp.position.latitude;
    uwp.longitude = req.wp.position.longitude;
    uwp.altitude = req.wp.position.altitude;
    uwp.orbitTime = 0;
    this->update_waypoint_publisher_.publish(uwp);
    ROS_INFO("Published new update waypoint:%8.4f,%8.4f,%8.4f", uwp.latitude,
             uwp.longitude, uwp.altitude);
  }
  return true;
}

void
AutopilotNode::PiccoloWP2ROSWP(const piccolo_ros::PiccoloWaypoint& msg,
    ros_vehicle_msgs::Waypoint& m)
{
  m.waypointId = msg.index;
  m.nextWp = msg.next;
  m.loiter.clockwise = msg.orbitDirection;
  m.loiter.radius = msg.orbitRadius;
  m.loiter.time_sec = msg.orbitTime;
  m.position.latitude = msg.latitude;
  m.position.longitude = msg.longitude;
  m.position.altitude = msg.altitude;
  m.stop = msg.landingPoint;
}

void
AutopilotNode::piccoloWaypointCallback(
    const piccolo_ros::PiccoloWaypoint::ConstPtr& msg)
{
  ros_vehicle_msgs::Waypoint m;
  PiccoloWP2ROSWP(*msg, m);
  knowned_waypoints_[(*msg).index] = *msg;
  waypoint_publisher_.publish(m);
}
void
AutopilotNode::piccoloTelemetryCallback(
    const piccolo_ros::PiccoloTelemetry::ConstPtr& msg)
{
  ros_vehicle_msgs::VehicleState vStateMsg;
  vStateMsg.vehicleId = msg->vehicleid;
  vStateMsg.position.latitude = msg->latitude;
  vStateMsg.position.longitude = msg->longitude;
  vStateMsg.position.altitude = msg->altitude;
  vStateMsg.vx = msg->vx;
  vStateMsg.vy = msg->vy;
  vStateMsg.vz = msg->vz;
  vStateMsg.heading = msg->yaw;
  this->vehicle_state_publisher_.publish(vStateMsg);
}
