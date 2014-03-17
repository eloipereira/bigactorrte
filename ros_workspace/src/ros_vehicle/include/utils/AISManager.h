/*
 * AISMANAGER.h
 *
 *  Created on: May 6, 2013
 *      Author: posilva
 */

#ifndef AISMANAGER_H_
#define AISMANAGER_H_

//! ROS Headers
#include <ros/ros.h>
#include <common/Definitions.h>
#include <common/PiccoloMsgs.h>
#include <common/ROSVehicleMsgs.h>
#include <common/ROSNode.h>
#include <mavlink/rosvehicle/mavlink.h>

class AISManager : public ROSNode
{

public:
  AISManager();
  virtual
  ~AISManager();
  virtual void
  setup();
  virtual void
  loop();
  bool
  addFilterCallback(ros_vehicle_msgs::AISAddFilter::Request &req,

  ros_vehicle_msgs::AISAddFilter::Response &res);

  bool
  removeFilterCallback(ros_vehicle_msgs::AISRemoveFilter::Request &req,
      ros_vehicle_msgs::AISRemoveFilter::Response &res);
  bool
  clearFiltersCallback(ros_vehicle_msgs::AISClearFilters::Request &req,
      ros_vehicle_msgs::AISClearFilters::Response &res);
  bool
  aisOnCallback(ros_vehicle_msgs::AISOn::Request &req,
      ros_vehicle_msgs::AISOn::Response &res);
  bool
  aisOffCallback(ros_vehicle_msgs::AISOff::Request&req,
      ros_vehicle_msgs::AISOff::Response &res);
private:

  int ais_network_;
  int vehicle_type_;
  ros::Publisher ais_state_pub_;
  ros::Publisher to_payload_pub_;
  ros::Subscriber from_payload_sub_;

  ros::ServiceServer add_filter_srv_;
  ros::ServiceServer remove_filter_srv_;
  ros::ServiceServer clear_filters_srv_;
  ros::ServiceServer ais_on_srv_;
  ros::ServiceServer ais_off_srv_;
  mavlink_system_t mavlink_system_;
  mavlink_message_t message;
  mavlink_status_t status;
  void
  fromPayloadCallback(const piccolo_ros::PiccoloFromPayload::ConstPtr& msg);
  void
  sendToPayload(const mavlink_message_t& msg, const uint64_t& vehicleId);
};

#endif /* AISMANAGER_H_ */

