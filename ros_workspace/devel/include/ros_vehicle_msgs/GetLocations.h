// Generated by gencpp from file ros_vehicle_msgs/GetLocations.msg
// DO NOT EDIT!


#ifndef ROS_VEHICLE_MSGS_MESSAGE_GETLOCATIONS_H
#define ROS_VEHICLE_MSGS_MESSAGE_GETLOCATIONS_H

#include <ros/service_traits.h>


#include <ros_vehicle_msgs/GetLocationsRequest.h>
#include <ros_vehicle_msgs/GetLocationsResponse.h>


namespace ros_vehicle_msgs
{

struct GetLocations
{

typedef GetLocationsRequest Request;
typedef GetLocationsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetLocations
} // namespace ros_vehicle_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_vehicle_msgs::GetLocations > {
  static const char* value()
  {
    return "622050f7bf06629d3ce9177375f41075";
  }

  static const char* value(const ::ros_vehicle_msgs::GetLocations&) { return value(); }
};

template<>
struct DataType< ::ros_vehicle_msgs::GetLocations > {
  static const char* value()
  {
    return "ros_vehicle_msgs/GetLocations";
  }

  static const char* value(const ::ros_vehicle_msgs::GetLocations&) { return value(); }
};


// service_traits::MD5Sum< ::ros_vehicle_msgs::GetLocationsRequest> should match 
// service_traits::MD5Sum< ::ros_vehicle_msgs::GetLocations > 
template<>
struct MD5Sum< ::ros_vehicle_msgs::GetLocationsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_vehicle_msgs::GetLocations >::value();
  }
  static const char* value(const ::ros_vehicle_msgs::GetLocationsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_vehicle_msgs::GetLocationsRequest> should match 
// service_traits::DataType< ::ros_vehicle_msgs::GetLocations > 
template<>
struct DataType< ::ros_vehicle_msgs::GetLocationsRequest>
{
  static const char* value()
  {
    return DataType< ::ros_vehicle_msgs::GetLocations >::value();
  }
  static const char* value(const ::ros_vehicle_msgs::GetLocationsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_vehicle_msgs::GetLocationsResponse> should match 
// service_traits::MD5Sum< ::ros_vehicle_msgs::GetLocations > 
template<>
struct MD5Sum< ::ros_vehicle_msgs::GetLocationsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_vehicle_msgs::GetLocations >::value();
  }
  static const char* value(const ::ros_vehicle_msgs::GetLocationsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_vehicle_msgs::GetLocationsResponse> should match 
// service_traits::DataType< ::ros_vehicle_msgs::GetLocations > 
template<>
struct DataType< ::ros_vehicle_msgs::GetLocationsResponse>
{
  static const char* value()
  {
    return DataType< ::ros_vehicle_msgs::GetLocations >::value();
  }
  static const char* value(const ::ros_vehicle_msgs::GetLocationsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_VEHICLE_MSGS_MESSAGE_GETLOCATIONS_H