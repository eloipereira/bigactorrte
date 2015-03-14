// Generated by gencpp from file ros_vehicle_msgs/GetUAVWaypoint.msg
// DO NOT EDIT!


#ifndef ROS_VEHICLE_MSGS_MESSAGE_GETUAVWAYPOINT_H
#define ROS_VEHICLE_MSGS_MESSAGE_GETUAVWAYPOINT_H

#include <ros/service_traits.h>


#include <ros_vehicle_msgs/GetUAVWaypointRequest.h>
#include <ros_vehicle_msgs/GetUAVWaypointResponse.h>


namespace ros_vehicle_msgs
{

struct GetUAVWaypoint
{

typedef GetUAVWaypointRequest Request;
typedef GetUAVWaypointResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetUAVWaypoint
} // namespace ros_vehicle_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_vehicle_msgs::GetUAVWaypoint > {
  static const char* value()
  {
    return "5eb7dba43a20b2f9718e562c710ce375";
  }

  static const char* value(const ::ros_vehicle_msgs::GetUAVWaypoint&) { return value(); }
};

template<>
struct DataType< ::ros_vehicle_msgs::GetUAVWaypoint > {
  static const char* value()
  {
    return "ros_vehicle_msgs/GetUAVWaypoint";
  }

  static const char* value(const ::ros_vehicle_msgs::GetUAVWaypoint&) { return value(); }
};


// service_traits::MD5Sum< ::ros_vehicle_msgs::GetUAVWaypointRequest> should match 
// service_traits::MD5Sum< ::ros_vehicle_msgs::GetUAVWaypoint > 
template<>
struct MD5Sum< ::ros_vehicle_msgs::GetUAVWaypointRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_vehicle_msgs::GetUAVWaypoint >::value();
  }
  static const char* value(const ::ros_vehicle_msgs::GetUAVWaypointRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_vehicle_msgs::GetUAVWaypointRequest> should match 
// service_traits::DataType< ::ros_vehicle_msgs::GetUAVWaypoint > 
template<>
struct DataType< ::ros_vehicle_msgs::GetUAVWaypointRequest>
{
  static const char* value()
  {
    return DataType< ::ros_vehicle_msgs::GetUAVWaypoint >::value();
  }
  static const char* value(const ::ros_vehicle_msgs::GetUAVWaypointRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_vehicle_msgs::GetUAVWaypointResponse> should match 
// service_traits::MD5Sum< ::ros_vehicle_msgs::GetUAVWaypoint > 
template<>
struct MD5Sum< ::ros_vehicle_msgs::GetUAVWaypointResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_vehicle_msgs::GetUAVWaypoint >::value();
  }
  static const char* value(const ::ros_vehicle_msgs::GetUAVWaypointResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_vehicle_msgs::GetUAVWaypointResponse> should match 
// service_traits::DataType< ::ros_vehicle_msgs::GetUAVWaypoint > 
template<>
struct DataType< ::ros_vehicle_msgs::GetUAVWaypointResponse>
{
  static const char* value()
  {
    return DataType< ::ros_vehicle_msgs::GetUAVWaypoint >::value();
  }
  static const char* value(const ::ros_vehicle_msgs::GetUAVWaypointResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_VEHICLE_MSGS_MESSAGE_GETUAVWAYPOINT_H
