/*
 * AISManager.cpp
 *
 *  Created on: May 6, 2013
 *      Author: posilva
 */
#include <utils/AISManager.h>

AISManager::AISManager() :
    ROSNode(true)
{

}

AISManager::~AISManager()
{

}

void
AISManager::setup()
{

  mavlink_system_.sysid = 100;
  mavlink_system_.compid = 50;

  int v = big_actor_msgs::Network::NT_AIS;
  readParam("ais_network", v, v);
  this->ais_network_ = v;

  v = big_actor_msgs::Vehicle::VT_DRIFTER;
  readParam("ais_vehicle_type", v, v);
  this->vehicle_type_ = v;

  ais_state_pub_ = getHandle().advertise<ros_vehicle_msgs::VehicleState>(
      VEHICLE_STATE_TOPIC, 10);

  to_payload_pub_ = getHandle().advertise<piccolo_ros::PiccoloToPayload>(
      "/piccolotopayload", 10);

  from_payload_sub_ = getHandle().subscribe("/piccolofrompayload", 10,
                                            &AISManager::fromPayloadCallback,
                                            this);

  //!Services
  add_filter_srv_ = getHandle().advertiseService("/ais_add_filter",
                                                 &AISManager::addFilterCallback,
                                                 this);

  remove_filter_srv_ = getHandle().advertiseService(
      "/ais_remove_filter", &AISManager::removeFilterCallback, this);

  clear_filters_srv_ = getHandle().advertiseService(
      "/ais_clear_filters", &AISManager::clearFiltersCallback, this);

  ais_on_srv_ = getHandle().advertiseService("/ais_on",
                                             &AISManager::aisOnCallback, this);

  ais_off_srv_ = getHandle().advertiseService("/ais_off",
                                              &AISManager::aisOffCallback,
                                              this);

}

void
AISManager::loop()
{

}

void
AISManager::sendToPayload(const mavlink_message_t& msg,
    const uint64_t& vehicleId)
{
  piccolo_ros::PiccoloToPayload m;
  uint8_t buf[MAVLINK_MAX_PACKET_LEN];
  uint16_t len = mavlink_msg_to_send_buffer(buf, &msg);
  m.vehicleid = vehicleId;
  m.len = len;
  m.data.insert(m.data.begin(), buf, buf + len);
  to_payload_pub_.publish(m);
}

bool
AISManager::addFilterCallback(ros_vehicle_msgs::AISAddFilter::Request& req,
    ros_vehicle_msgs::AISAddFilter::Response& res)
{

  res.result.ok = true;
  res.result.error = "";

  mavlink_message_t msg;
  mavlink_msg_ais_filter_pack(this->mavlink_system_.sysid,
                              this->mavlink_system_.compid, &msg,
                              AIS_FILTER_ADD, req.mmsi);

  sendToPayload(msg, req.vehicleId);
  return true;

}

bool
AISManager::removeFilterCallback(
    ros_vehicle_msgs::AISRemoveFilter::Request& req,
    ros_vehicle_msgs::AISRemoveFilter::Response& res)
{
  res.result.ok = true;
  res.result.error = "";

  mavlink_message_t msg;
  mavlink_msg_ais_filter_pack(this->mavlink_system_.sysid,
                              this->mavlink_system_.compid, &msg,
                              AIS_FILTER_REMOVE, req.mmsi);

  sendToPayload(msg, req.vehicleId);
  return true;
}

bool
AISManager::clearFiltersCallback(
    ros_vehicle_msgs::AISClearFilters::Request& req,
    ros_vehicle_msgs::AISClearFilters::Response& res)
{
  res.result.ok = true;
  res.result.error = "";

  mavlink_message_t msg;
  mavlink_msg_ais_filter_pack(this->mavlink_system_.sysid,
                              this->mavlink_system_.compid, &msg,
                              AIS_FILTER_CLEAR, 0);

  sendToPayload(msg, req.vehicleId);
  return true;
}

bool
AISManager::aisOnCallback(ros_vehicle_msgs::AISOn::Request& req,
    ros_vehicle_msgs::AISOn::Response& res)
{
  res.result.ok = true;
  res.result.error = "";

  mavlink_message_t msg;
  mavlink_msg_ais_status_pack(this->mavlink_system_.sysid,
                              this->mavlink_system_.compid, &msg,
                              AIS_STATUS_WRITE, AIS_MODE_ON);

  sendToPayload(msg, req.vehicleId);
  return true;
}

bool
AISManager::aisOffCallback(ros_vehicle_msgs::AISOff::Request& req,
    ros_vehicle_msgs::AISOff::Response& res)
{
  res.result.ok = true;
  res.result.error = "";

  mavlink_message_t msg;
  mavlink_msg_ais_status_pack(this->mavlink_system_.sysid,
                              this->mavlink_system_.compid, &msg,
                              AIS_STATUS_WRITE, AIS_MODE_OFF);

  sendToPayload(msg, req.vehicleId);
  return true;
}

void
AISManager::fromPayloadCallback(
    const piccolo_ros::PiccoloFromPayload::ConstPtr& msg)
{

  for (int i = 0; i < msg->len; ++i)
  {

    if (mavlink_parse_char(MAVLINK_COMM_0, msg->data[i], &message, &status))
    {
      //ROS_INFO("AIS-MANAGER: Received payload data: %d ", msg->len);
      //! received a valid message
      switch (message.msgid)
      {
        case MAVLINK_MSG_ID_AIS_FILTER:
          {
            break;
          }
        case MAVLINK_MSG_ID_AIS_STATUS:
          {
            break;
          }
        case MAVLINK_MSG_ID_AIS_POSITION_REPORT:
          {
            ROS_INFO("Received a position report from UAV");
            mavlink_ais_position_report_t position_report;
            mavlink_msg_ais_position_report_decode(&message, &position_report);
            ros_vehicle_msgs::VehicleState v_state;
            v_state.vehicleId = position_report.mmsi;
            v_state.vehicleType = this->vehicle_type_;
            v_state.vehicleNetwork = this->ais_network_;
            v_state.position.latitude = position_report.latitude;
            v_state.position.longitude = position_report.longitude;
            v_state.position.latitude = position_report.latitude;
            v_state.heading = position_report.heading;
            ais_state_pub_.publish(v_state);
            break;
          }
        case MAVLINK_MSG_ID_AIS_STATIC_VOYAGE:
          {
            break;
          }
        default:
          break;
      }

    }

  }
}
