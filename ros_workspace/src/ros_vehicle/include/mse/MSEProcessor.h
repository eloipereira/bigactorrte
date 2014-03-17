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
// Description: MSEProcessor.h
// 
// ==========================================================================

#ifndef MSEPROCESSOR_H_
#define MSEPROCESSOR_H_

//! C++ 98 Headers
#include <map>
#include <list>
#include <vector>

//! ROS Headers
#include <ros/ros.h>
#include <common/BigActorMsgs.h>
#include <common/Services.h>
#include <ros_vehicle_msgs/VehicleState.h>
#include <ros_vehicle_msgs/TaskState.h>
#include <ros_vehicle_msgs/AddStaticVehicle.h>
#include <common/Definitions.h>
#include <common/ROSNode.h>
#include <istream>
#define DEBUG 1

class MSEProcessor : public ROSNode
{

public:
  MSEProcessor(uint64_t publish_sse_rate = 1000, uint64_t publish_mse_rate =
      2000);
  virtual
  ~MSEProcessor();
  virtual void
  setup();
  virtual void
  loop();
  void
  taskStateCallback(const ros_vehicle_msgs::TaskState::ConstPtr& msg);
  void
  mseCallback(const big_actor_msgs::MissionStateEstimate::ConstPtr& msg);
  void
  sseCallback(const big_actor_msgs::StructureStateEstimate::ConstPtr& msg);
  void
  vehicleStateCallback(const ros_vehicle_msgs::VehicleState::ConstPtr& msg);

  void
  setupPublishersSubscribers();
  void
  setMSEPublishInterval(uint64_t publish_interval_ms);
  void
  setSSEPublishInterval(uint64_t publish_interval_ms);
  /**
   * Services
   */
  bool
  addTaskCallback(ros_vehicle_msgs::AddTask::Request &req,

  ros_vehicle_msgs::AddTask::Response &res);
  bool
  assignTaskCallback(ros_vehicle_msgs::AssignTask::Request &req,
      ros_vehicle_msgs::AssignTask::Response &res);
  bool
  abortTaskCallback(ros_vehicle_msgs::AbortTask::Request &req,
      ros_vehicle_msgs::AbortTask::Response &res);
  bool
  addLocationCallback(ros_vehicle_msgs::AddLocation::Request &req,
      ros_vehicle_msgs::AddLocation::Response &res);
  bool
  addStaticVehicleCallback(ros_vehicle_msgs::AddStaticVehicle::Request& req,
      ros_vehicle_msgs::AddStaticVehicle::Response& res);
private:

  //! this processor is associated to a vehicle
  uint64_t vehicle_id_;
  std::string vehicle_name_;
  uint8_t vehicle_type_;
  uint64_t ground_station_id_;
  uint8_t ground_station_net_;
  uint8_t ground_station_channel_;
  float ground_station_latitude_;
  float ground_station_longitude_;
  float ground_station_altitude_;

  //! publish interval in millisecs
  uint64_t publish_mse_sleep_;
  uint64_t publish_sse_sleep_;
  //!
  uint64_t last_mse_publish_ts_;
  uint64_t last_sse_publish_ts_;
  //! Subscribe MSE Messages from ROS Network

  ros::Subscriber external_mse_subcriber_;
  //! Service Servers

  ros::ServiceServer add_task_srv_;
  ros::ServiceServer add_location_srv_;
  ros::ServiceServer assign_task_srv_;
  ros::ServiceServer abort_task_srv_;
  ros::ServiceServer add_static_vehicle_srv_;
  //! Subscribe SSE Messages from ROS Network
  ros::Subscriber external_sse_subcriber_;
  ros::Subscriber ap_state_subcriber_;
  ros::Subscriber taskstate_subcriber_;
  //! Publish MSE Messages to ROS Network
  ros::Publisher mse_publisher_;
  ros::Publisher internal_mse_publisher_;
  //! Publish SSE Messages to ROS Network
  ros::Publisher sse_publisher_;
  ros::Publisher internal_sse_publisher_;
  //! last data received
  big_actor_msgs::Task last_task_info_;
  big_actor_msgs::Vehicle last_vehicle_info_;

  //! MSE data maps
  VehiclesMap_t vehicles_;
  TasksMap_t tasks_;
  LocationsMap_t locations_;
  ConnectivityMap_t connectivity_;
  TimestampsMap_t vehicles_stamps_;
  std::vector<int> networks_;

  //! Private helper methods
  bool
  isFresh(uint64_t vid, uint64_t ts);
  void
  updateTasks(const big_actor_msgs::MissionStateEstimate::ConstPtr& msg);
  void
  updateVehicles(const big_actor_msgs::StructureStateEstimate::ConstPtr& msg);
  void
  updateLocations(const big_actor_msgs::StructureStateEstimate::ConstPtr& msg);
  void
  updateConnectivity(
      const big_actor_msgs::StructureStateEstimate::ConstPtr& msg);
  void
  publishMSE();
  void
  publishSSE();
  big_actor_msgs::Vehicle &
  getMyVehicleInfo();
  TasksMap_t::iterator
  findTaskById(ros_vehicle_msgs::AbortTask::Request& req,
      ros_vehicle_msgs::ServiceReturnBool& result);
  void
  setupParameters();
  void
  generateNameFromID(const uint8_t& type, const uint64_t& id,
      std::string& name);
  void
  createGroundStationVehicle();
  void
  updateNetworkChannel();
  bool
  hasNetwork(const uint64_t& vid, const uint8_t& net);
};

#endif /* MSEPROCESSOR_H_ */

