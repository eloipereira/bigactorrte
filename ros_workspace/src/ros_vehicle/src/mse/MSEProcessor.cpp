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
// Description: MSEProcessor.cpp
// 
// ==========================================================================
#include <algorithm>
#include <iterator>
#include <mse/MSEProcessor.h>
#include <common/Clock.h>

MSEProcessor::MSEProcessor(uint64_t publish_sse_interval_ms,
    uint64_t publish_mse_interval_ms) :
    ROSNode(false), vehicle_id_(0), last_mse_publish_ts_(0), last_sse_publish_ts_(
        0)
{
  setMSEPublishInterval(publish_mse_interval_ms);
  setSSEPublishInterval(publish_sse_interval_ms);

}

MSEProcessor::~MSEProcessor()
{

}

void
MSEProcessor::setupPublishersSubscribers()
{

  this->taskstate_subcriber_ = getHandle().subscribe(
      TASK_STATE_TOPIC, 10, &MSEProcessor::taskStateCallback, this);

  this->external_mse_subcriber_ = getHandle().subscribe(
      EXTERNAL_MISSION_STATE_ESTIMATE_TOPIC, 10, &MSEProcessor::mseCallback,
      this);

  this->external_sse_subcriber_ = getHandle().subscribe(
      EXTERNAL_STRUCTURE_STATE_ESTIMATE_TOPIC, 10, &MSEProcessor::sseCallback,
      this);

  this->ap_state_subcriber_ = getHandle().subscribe(
      VEHICLE_STATE_TOPIC, 10, &MSEProcessor::vehicleStateCallback, this);

  this->mse_publisher_ = getHandle().advertise<
      big_actor_msgs::MissionStateEstimate>(MISSION_STATE_ESTIMATE_TOPIC, 10);

  this->internal_mse_publisher_ = getHandle().advertise<
      big_actor_msgs::MissionStateEstimate>(
      INTERNAL_MISSION_STATE_ESTIMATE_TOPIC, 10);

  this->sse_publisher_ = getHandle().advertise<
      big_actor_msgs::StructureStateEstimate>(STRUCTURE_STATE_ESTIMATE_TOPIC,
                                              10);
  this->internal_sse_publisher_ = getHandle().advertise<
      big_actor_msgs::StructureStateEstimate>(
      INTERNAL_STRUCTURE_STATE_ESTIMATE_TOPIC, 10);

  /**
   * Services
   */
  add_task_srv_ = getHandle().advertiseService("add_task",
                                               &MSEProcessor::addTaskCallback,
                                               this);
  add_location_srv_ = getHandle().advertiseService(
      "add_location", &MSEProcessor::addLocationCallback, this);
  assign_task_srv_ = getHandle().advertiseService(
      "assign_task", &MSEProcessor::assignTaskCallback, this);
  abort_task_srv_ = getHandle().advertiseService(
      "abort_task", &MSEProcessor::abortTaskCallback, this);
  add_static_vehicle_srv_ = getHandle().advertiseService(
      "add_static_vehicle", &MSEProcessor::addStaticVehicleCallback, this);

}

void
MSEProcessor::createGroundStationVehicle()
{
  if (this->getHandle().hasParam("/gs_id"))
  {
    big_actor_msgs::Network net;
    net.type = ground_station_net_;
    net.address = ground_station_channel_;
    net.mask = 0;
    net.timeStamp = Clock::getTimeStamp();
    vehicles_[ground_station_id_].timeStamp = Clock::getTimeStamp();
    vehicles_[ground_station_id_].vehicleId = ground_station_id_;
    vehicles_[ground_station_id_].vehicleType =
        big_actor_msgs::Vehicle::VT_GROUND_STATION;
    vehicles_[ground_station_id_].networks.push_back(net);
    vehicles_[ground_station_id_].position.latitude = ground_station_latitude_;
    vehicles_[ground_station_id_].position.longitude =
        ground_station_longitude_;
    vehicles_[ground_station_id_].position.altitude = ground_station_altitude_;

    generateNameFromID(big_actor_msgs::Vehicle::VT_GROUND_STATION,
                       ground_station_id_, vehicles_[ground_station_id_].name);
  }
}

void
MSEProcessor::setupParameters()
{
  int v = 0;
  if (!this->readParam("/vehicle_id", v, v))
  {
    throw ROSVehicleException("Vehicle Id Parameter Missing");
  }
  vehicle_id_ = v;
  if (this->getHandle().hasParam("/gs_id"))
  {
    if (!this->readParam("/gs_channel", v, v))
    {
      throw ROSVehicleException("Ground Station Channel Parameter Missing");
    }
    ground_station_channel_ = v;
  }

  int type = big_actor_msgs::Vehicle::VT_NONE;
  this->readParam("/vehicle_type", type, type);
  vehicle_type_ = type;

  std::string s = "";
  if (!this->readParam("/vehicle_name", s, s))
  {
    generateNameFromID(type, v, s);
  }
  vehicle_name_ = s;
  //! Load static networks
  v = 0;
  if (this->readParam("/net_num", v, v))
  {
    int n = 0;
    for (int i = 1; i <= v; ++i)
    {
      std::stringstream ss;
      ss << "/net_" << i;
      if (this->readParam(ss.str(), n, n))
      {
        ROS_INFO("Added network:%d", n);
        networks_.push_back(n);
      }
    }
  }

  if (this->getHandle().hasParam("/gs_id"))
  {
    v = big_actor_msgs::Network::NT_PICCOLO;
    this->readParam("/gs_nettype", v, v);
    ground_station_net_ = v;

    this->readParam("/gs_id", v, v);
    ground_station_id_ = v;

    double d = 0.0;
    this->readParam("/gs_lat", d, d);
    ground_station_latitude_ = d;

    this->readParam("/gs_long", d, d);
    ground_station_longitude_ = d;

    this->readParam("/gs_alt", d, d);
    ground_station_altitude_ = d;
  }
}

void
MSEProcessor::setup()
{
  setupParameters();
  createGroundStationVehicle();
  setupPublishersSubscribers();

}
void
MSEProcessor::publishSSE()
{
  big_actor_msgs::StructureStateEstimate sse;

  sse.srcVehicleId = this->vehicle_id_;
  sse.timeStamp = Clock::getTimeStamp();
  for (VehiclesMap_t::iterator it = this->vehicles_.begin();
      it != this->vehicles_.end(); ++it)
  {
    sse.vehicles.push_back(it->second);
  }

  for (LocationsMap_t::iterator it = this->locations_.begin();
      it != this->locations_.end(); ++it)
  {
    sse.locations.push_back(it->second);
  }

  this->sse_publisher_.publish(sse);
  this->internal_sse_publisher_.publish(sse);
}
void
MSEProcessor::publishMSE()
{
  big_actor_msgs::MissionStateEstimate mse;
  mse.timeStamp = Clock::getTimeStamp();
  mse.srcVehicleId = this->vehicle_id_;

  for (TasksMap_t::iterator it = this->tasks_.begin(); it != this->tasks_.end();
      ++it)
  {
    mse.tasks.push_back(it->second);
  }

  this->mse_publisher_.publish(mse);
  this->internal_mse_publisher_.publish(mse);
}
void
MSEProcessor::loop()
{

  if (Clock::getTimeStamp()
      > this->last_mse_publish_ts_ + this->publish_mse_sleep_)
  {
    publishMSE();
    this->last_mse_publish_ts_ = Clock::getTimeStamp();
  }

  if (Clock::getTimeStamp()
      > this->last_sse_publish_ts_ + this->publish_sse_sleep_)
  {
    publishSSE();
    this->last_sse_publish_ts_ = Clock::getTimeStamp();
  }
}
bool
MSEProcessor::isFresh(uint64_t vid, uint64_t ts)
{
  return true; //TODO Validate this condition
  return this->vehicles_stamps_.find(vid) == this->vehicles_stamps_.end()
      || this->vehicles_stamps_[vid] < ts;
}

void
MSEProcessor::updateVehicles(
    const big_actor_msgs::StructureStateEstimate::ConstPtr& msg)
{
  VehiclesVector_t v = msg->vehicles;

  for (VehiclesVector_t::iterator it = v.begin(); it != v.end(); ++it)
  {
    //ROS_INFO(" %lu < %lu ",this->vehicles_[it->vehicleId].timeStamp ,it->timeStamp);
    //!only admit changes to other vehicles than me
    if (it->vehicleId != this->vehicle_id_)
    {
      if (this->vehicles_.find(it->vehicleId) == this->vehicles_.end()
          || this->vehicles_[it->vehicleId].timeStamp < it->timeStamp)
      {
      //  ROS_INFO("Vehicle '%lu' was updated", it->vehicleId);
        this->vehicles_[it->vehicleId] = *it;
      }
    }
  }
}

void
MSEProcessor::updateTasks(
    const big_actor_msgs::MissionStateEstimate::ConstPtr& msg)
{
  TasksVector_t v = msg->tasks;
  for (TasksVector_t::iterator it = v.begin(); it != v.end(); ++it)
  {
    ROS_INFO(" %lu < %lu ",this->tasks_[it->taskId].taskStamp ,it->taskStamp);
    if (this->tasks_.find(it->taskId) == this->tasks_.end()
        || this->tasks_[it->taskId].taskStamp < it->taskStamp)
    {
      ROS_INFO("Task '%d' was updated", it->taskId);
      this->tasks_[it->taskId] = *it;
    }
  }

}

void
MSEProcessor::updateLocations(
    const big_actor_msgs::StructureStateEstimate::ConstPtr& msg)
{
  LocationsVector_t v = msg->locations;
  for (LocationsVector_t::iterator it = v.begin(); it != v.end(); ++it)
  {
    //ROS_INFO(" %lu < %lu ",this->locations_[it->locationId].timeStamp ,it->timeStamp);
    if (this->locations_.find(it->locationId) == this->locations_.end()
        || this->locations_[it->locationId].timeStamp < it->timeStamp)
    {
      this->locations_[it->locationId] = *it;
      //ROS_INFO("Updated Location: ");
    }
  }
}

void
MSEProcessor::updateConnectivity(
    const big_actor_msgs::StructureStateEstimate::ConstPtr& msg)
{
  ConnectivityVector_t v = msg->connections;
  for (ConnectivityVector_t::iterator it = v.begin(); it != v.end(); ++it)
  {
    //!TODO: Replace object for pointers to objects
    if (this->connectivity_.find(it->srcVehicleId) == this->connectivity_.end())
    {
      this->connectivity_[it->srcVehicleId].push_back(*it);
    }
    else
    {
      //!TODO: Evaluate how to update information
    }
    if (this->connectivity_.find(it->dstVehicleId) == this->connectivity_.end())
    {
      this->connectivity_[it->dstVehicleId].push_back(*it);
    }
    else
    {
      //!TODO: Evaluate how to update information
    }
  }
}

void
MSEProcessor::sseCallback(
    const big_actor_msgs::StructureStateEstimate::ConstPtr& msg)
{
  if (msg->srcVehicleId == this->vehicle_id_)
  {
    return;
  }
  else
  {
    /*
     if (DEBUG)
     ROS_WARN("[%lu] - Received a MSE from: %lu", this->vehicle_id_,
     msg->srcVehicleId);*/
  }

  if (isFresh(msg->srcVehicleId, msg->timeStamp))
  {
    //! update the stamp and process MSE
    this->vehicles_stamps_[msg->srcVehicleId] = msg->timeStamp;
    updateVehicles(msg);
    updateLocations(msg);
    updateConnectivity(msg); //! TODO:Review connectivity info
  }
}

void
MSEProcessor::taskStateCallback(
    const ros_vehicle_msgs::TaskState::ConstPtr& msg)
{
  ROS_INFO("Received a taskState message: %d", msg->taskId);
  if (msg->vehicleId == this->vehicle_id_)
  {
    if (this->tasks_.find(msg->taskId) == this->tasks_.end())
    {
      ROS_INFO("Number of tasks in queue %d", (int )this->tasks_.size());

      ROS_WARN(
          "Received a invalid task from  a task state update %d status: %d",
          msg->taskId, msg->taskStatus);
    }
    else
    { //! update task info

      this->tasks_[msg->taskId].vehicleId = msg->vehicleId;
      this->tasks_[msg->taskId].taskStamp = Clock::getTimeStamp();
      this->tasks_[msg->taskId].status = msg->taskStatus;
      ROS_WARN("updated local task");
    }
  }
}
void
MSEProcessor::mseCallback(
    const big_actor_msgs::MissionStateEstimate::ConstPtr& msg)
{
  if (msg->srcVehicleId == this->vehicle_id_)
  {

    return;
  }
  else
  {
    /*
     if (DEBUG)
     ROS_WARN("[%lu] - Received a MSE from: %lu", this->vehicle_id_,
     msg->srcVehicleId);
     */
  }
  if (isFresh(msg->srcVehicleId, msg->timeStamp))
  {
    //! update the stamp and process MSE
    this->vehicles_stamps_[msg->srcVehicleId] = msg->timeStamp;
    updateTasks(msg);
  }
}

bool
MSEProcessor::addTaskCallback(ros_vehicle_msgs::AddTask::Request& req,
    ros_vehicle_msgs::AddTask::Response& res)
{
  ros_vehicle_msgs::ServiceReturnBool result;
  result.ok = true;
  result.error = "";

  TasksMap_t::iterator item = this->tasks_.find(req.task.taskId);

  if (item != this->tasks_.end())
  {
    if (!req.update)
    {
      std::stringstream ss;
      ss << "Already exists task Id: " << req.task.taskId;

      result.ok = false;
      result.error = ss.str();
    }
    else
    {
      req.task.taskStamp = Clock::getTimeStamp();
      this->tasks_[req.task.taskId] = req.task;
    }

  }
  else
  {
    req.task.taskStamp = Clock::getTimeStamp();
    this->tasks_[req.task.taskId] = req.task;
  }

  res.result = result;
  return true;
}

bool
MSEProcessor::assignTaskCallback(ros_vehicle_msgs::AssignTask::Request& req,
    ros_vehicle_msgs::AssignTask::Response& res)
{
  ros_vehicle_msgs::ServiceReturnBool result;
  result.ok = true;
  result.error = "";
  TasksMap_t::iterator item = this->tasks_.find(req.task);
  if (item == this->tasks_.end())
  {
    std::stringstream ss;
    ss << "Unknowned task Id: " << req.task;

    result.ok = false;
    result.error = ss.str();
  }
  else
  {
    item->second.status = big_actor_msgs::Task::TS_ASSIGNED;
    item->second.vehicleId = req.to;
  }
  res.result = result;
  return true;
}

bool
MSEProcessor::abortTaskCallback(ros_vehicle_msgs::AbortTask::Request& req,
    ros_vehicle_msgs::AbortTask::Response& res)
{
  ros_vehicle_msgs::ServiceReturnBool result;
  result.ok = true;
  result.error = "";

  TasksMap_t::iterator item = this->tasks_.find(req.task);
  if (item == this->tasks_.end())
  {
    std::stringstream ss;
    ss << "Unknowned task Id: " << req.task;

    result.ok = false;
    result.error = ss.str();
  }
  else
  {
    item->second.taskStamp = Clock::getTimeStamp();
    item->second.status = big_actor_msgs::Task::TS_CANCELED;
  }
  res.result = result;
  return true;
}

bool
MSEProcessor::addLocationCallback(ros_vehicle_msgs::AddLocation::Request& req,
    ros_vehicle_msgs::AddLocation::Response& res)
{
  ros_vehicle_msgs::ServiceReturnBool result;
  result.ok = true;
  result.error = "";
  LocationsMap_t::iterator item = this->locations_.find(
      req.location.locationId);
  if (item != this->locations_.end())
  {
    std::stringstream ss;
    ss << "Already exists location Id: " << req.location.locationId;

    result.ok = false;
    result.error = ss.str();
  }
  else
  {
    req.location.timeStamp = Clock::getTimeStamp();
    this->locations_[req.location.locationId] = req.location;
  }
  res.result = result;
  return true;
}

big_actor_msgs::Vehicle&
MSEProcessor::getMyVehicleInfo()
{
  return this->vehicles_[this->vehicle_id_];
}

void
MSEProcessor::generateNameFromID(const uint8_t& type, const uint64_t& id,
    std::string& name)
{
  std::stringstream ss;
  switch (type)
  {
    case big_actor_msgs::Vehicle::VT_DRIFTER:
      ss << "drifter";
      break;
    case big_actor_msgs::Vehicle::VT_GROUND_STATION:
      ss << "gs";
      break;
    case big_actor_msgs::Vehicle::VT_MODEL_AIRPLANE:
      ss << "uav";
      break;
    case big_actor_msgs::Vehicle::VT_QUADROTOR:
      ss << "quad";
      break;
    case big_actor_msgs::Vehicle::VT_VESSEL:
      ss << "vessel";
      break;
    case big_actor_msgs::Vehicle::VT_NONE:
      ss << "vehicle";
      break;
    default:
      ss << "vehicle";
      break;
  }
  ss << id;
  name = ss.str();
}

void
MSEProcessor::updateNetworkChannel()
{
  bool found = false;
  std::vector<big_actor_msgs::Network>::iterator it;
  for (it = getMyVehicleInfo().networks.begin();
      it != getMyVehicleInfo().networks.end(); it++)
  {
    if (it->type == ground_station_net_)
    {
      it->address = ground_station_channel_;
      found = true;
      break;
    }
  }
  if (this->getHandle().hasParam("/gs_id"))
  {
    if (!found)
    {
      big_actor_msgs::Network net;
      net.type = ground_station_net_;
      net.address = ground_station_channel_;
      net.mask = 0;
      net.timeStamp = Clock::getTimeStamp();
      getMyVehicleInfo().networks.push_back(net);
    }
  }
}

bool
MSEProcessor::addStaticVehicleCallback(
    ros_vehicle_msgs::AddStaticVehicle::Request& req,
    ros_vehicle_msgs::AddStaticVehicle::Response& res)
{
  ros_vehicle_msgs::ServiceReturnBool result;
  result.ok = true;
  result.error = "";

  VehiclesMap_t::iterator item = this->vehicles_.find(req.vehicle.vehicleId);

  if (item != this->vehicles_.end())
  {
    if (!req.update)
    {
      std::stringstream ss;
      ss << "Already exists vehicle Id: " << req.vehicle.vehicleId;
      result.ok = false;
      result.error = ss.str();
    }
    else
    {
      req.vehicle.timeStamp = Clock::getTimeStamp();
      this->vehicles_[req.vehicle.vehicleId] = req.vehicle;
    }
  }
  else
  {
    req.vehicle.timeStamp = Clock::getTimeStamp();
    this->vehicles_[req.vehicle.vehicleId] = req.vehicle;
  }

  res.result = result;
  return true;
}

bool
MSEProcessor::hasNetwork(const uint64_t& vid, const uint8_t& net)
{
  if (net == big_actor_msgs::Network::NT_NONE)
    return true;
  bool found = false;
  std::vector<big_actor_msgs::Network>::iterator it;
  for (it = this->vehicles_[vid].networks.begin();
      it != this->vehicles_[vid].networks.end(); it++)
  {
    if (it->type == net)
    {
      it->address = 0;
      found = true;
      break;
    }
  }
  return found;
}

void
MSEProcessor::vehicleStateCallback(
    const ros_vehicle_msgs::VehicleState::ConstPtr& msg)
{

  this->vehicles_[msg->vehicleId].timeStamp = Clock::getTimeStamp();
  if (msg->vehicleId == this->vehicle_id_)
  {
    getMyVehicleInfo().name = this->vehicle_name_;
    getMyVehicleInfo().vehicleId = this->vehicle_id_;
    getMyVehicleInfo().vehicleType = this->vehicle_type_;

    updateNetworkChannel();
  }
  else
  { //! this is a vehicle information lets update my list
    this->vehicles_[msg->vehicleId].vehicleType = msg->vehicleType;
    generateNameFromID(msg->vehicleType, msg->vehicleId,
                       this->vehicles_[msg->vehicleId].name);
  }

  for (std::vector<int>::iterator it = networks_.begin(); it != networks_.end();
      it++)
  {
    if (!hasNetwork(msg->vehicleId, (uint8_t)*it))
    {
      big_actor_msgs::Network net;
      net.type = *it;
      net.address = 0;
      net.mask = 0;
      net.timeStamp = Clock::getTimeStamp();
      this->vehicles_[msg->vehicleId].networks.push_back(net);
      ROS_INFO("add network type: %d", *it);
    }
  }

  if (!hasNetwork(msg->vehicleId, msg->vehicleNetwork))
  {
    big_actor_msgs::Network net;
    net.type = msg->vehicleNetwork;
    net.address = 0;
    net.mask = 0;
    net.timeStamp = Clock::getTimeStamp();
    this->vehicles_[msg->vehicleId].networks.push_back(net);
  }
  this->vehicles_[msg->vehicleId].vehicleId = msg->vehicleId;
  this->vehicles_[msg->vehicleId].heading = msg->heading;
  this->vehicles_[msg->vehicleId].position.latitude = msg->position.latitude;
  this->vehicles_[msg->vehicleId].position.longitude = msg->position.longitude;
  this->vehicles_[msg->vehicleId].position.altitude = msg->position.altitude;

}
void
MSEProcessor::setMSEPublishInterval(uint64_t publish_interval_ms)
{
  this->publish_mse_sleep_ = (publish_interval_ms / 1000);
}
void
MSEProcessor::setSSEPublishInterval(uint64_t publish_interval_ms)
{
  this->publish_sse_sleep_ = (publish_interval_ms / 1000);
}
