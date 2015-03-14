// Generated by gencpp from file ros_vehicle_msgs/UpdateWaypoint.msg
// DO NOT EDIT!


#ifndef ROS_VEHICLE_MSGS_MESSAGE_UPDATEWAYPOINT_H
#define ROS_VEHICLE_MSGS_MESSAGE_UPDATEWAYPOINT_H

#include <ros/service_traits.h>


#include <ros_vehicle_msgs/UpdateWaypointRequest.h>
#include <ros_vehicle_msgs/UpdateWaypointResponse.h>


namespace ros_vehicle_msgs
{

struct UpdateWaypoint
{

typedef UpdateWaypointRequest Request;
typedef UpdateWaypointResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct UpdateWaypoint
} // namespace ros_vehicle_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_vehicle_msgs::UpdateWaypoint > {
  static const char* value()
  {
    return "6198971bac65ad537719ff30fecd8b10";
  }

  static const char* value(const ::ros_vehicle_msgs::UpdateWaypoint&) { return value(); }
};

template<>
struct DataType< ::ros_vehicle_msgs::UpdateWaypoint > {
  static const char* value()
  {
    return "ros_vehicle_msgs/UpdateWaypoint";
  }

  static const char* value(const ::ros_vehicle_msgs::UpdateWaypoint&) { return value(); }
};


// service_traits::MD5Sum< ::ros_vehicle_msgs::UpdateWaypointRequest> should match 
// service_traits::MD5Sum< ::ros_vehicle_msgs::UpdateWaypoint > 
template<>
struct MD5Sum< ::ros_vehicle_msgs::UpdateWaypointRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_vehicle_msgs::UpdateWaypoint >::value();
  }
  static const char* value(const ::ros_vehicle_msgs::UpdateWaypointRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_vehicle_msgs::UpdateWaypointRequest> should match 
// service_traits::DataType< ::ros_vehicle_msgs::UpdateWaypoint > 
template<>
struct DataType< ::ros_vehicle_msgs::UpdateWaypointRequest>
{
  static const char* value()
  {
    return DataType< ::ros_vehicle_msgs::UpdateWaypoint >::value();
  }
  static const char* value(const ::ros_vehicle_msgs::UpdateWaypointRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_vehicle_msgs::UpdateWaypointResponse> should match 
// service_traits::MD5Sum< ::ros_vehicle_msgs::UpdateWaypoint > 
template<>
struct MD5Sum< ::ros_vehicle_msgs::UpdateWaypointResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_vehicle_msgs::UpdateWaypoint >::value();
  }
  static const char* value(const ::ros_vehicle_msgs::UpdateWaypointResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_vehicle_msgs::UpdateWaypointResponse> should match 
// service_traits::DataType< ::ros_vehicle_msgs::UpdateWaypoint > 
template<>
struct DataType< ::ros_vehicle_msgs::UpdateWaypointResponse>
{
  static const char* value()
  {
    return DataType< ::ros_vehicle_msgs::UpdateWaypoint >::value();
  }
  static const char* value(const ::ros_vehicle_msgs::UpdateWaypointResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_VEHICLE_MSGS_MESSAGE_UPDATEWAYPOINT_H