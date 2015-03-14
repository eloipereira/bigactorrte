// Generated by gencpp from file ros_vehicle_msgs/AISAddFilter.msg
// DO NOT EDIT!


#ifndef ROS_VEHICLE_MSGS_MESSAGE_AISADDFILTER_H
#define ROS_VEHICLE_MSGS_MESSAGE_AISADDFILTER_H

#include <ros/service_traits.h>


#include <ros_vehicle_msgs/AISAddFilterRequest.h>
#include <ros_vehicle_msgs/AISAddFilterResponse.h>


namespace ros_vehicle_msgs
{

struct AISAddFilter
{

typedef AISAddFilterRequest Request;
typedef AISAddFilterResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AISAddFilter
} // namespace ros_vehicle_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_vehicle_msgs::AISAddFilter > {
  static const char* value()
  {
    return "574a751e9072e0c419c02c93b7c35b48";
  }

  static const char* value(const ::ros_vehicle_msgs::AISAddFilter&) { return value(); }
};

template<>
struct DataType< ::ros_vehicle_msgs::AISAddFilter > {
  static const char* value()
  {
    return "ros_vehicle_msgs/AISAddFilter";
  }

  static const char* value(const ::ros_vehicle_msgs::AISAddFilter&) { return value(); }
};


// service_traits::MD5Sum< ::ros_vehicle_msgs::AISAddFilterRequest> should match 
// service_traits::MD5Sum< ::ros_vehicle_msgs::AISAddFilter > 
template<>
struct MD5Sum< ::ros_vehicle_msgs::AISAddFilterRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_vehicle_msgs::AISAddFilter >::value();
  }
  static const char* value(const ::ros_vehicle_msgs::AISAddFilterRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_vehicle_msgs::AISAddFilterRequest> should match 
// service_traits::DataType< ::ros_vehicle_msgs::AISAddFilter > 
template<>
struct DataType< ::ros_vehicle_msgs::AISAddFilterRequest>
{
  static const char* value()
  {
    return DataType< ::ros_vehicle_msgs::AISAddFilter >::value();
  }
  static const char* value(const ::ros_vehicle_msgs::AISAddFilterRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_vehicle_msgs::AISAddFilterResponse> should match 
// service_traits::MD5Sum< ::ros_vehicle_msgs::AISAddFilter > 
template<>
struct MD5Sum< ::ros_vehicle_msgs::AISAddFilterResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_vehicle_msgs::AISAddFilter >::value();
  }
  static const char* value(const ::ros_vehicle_msgs::AISAddFilterResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_vehicle_msgs::AISAddFilterResponse> should match 
// service_traits::DataType< ::ros_vehicle_msgs::AISAddFilter > 
template<>
struct DataType< ::ros_vehicle_msgs::AISAddFilterResponse>
{
  static const char* value()
  {
    return DataType< ::ros_vehicle_msgs::AISAddFilter >::value();
  }
  static const char* value(const ::ros_vehicle_msgs::AISAddFilterResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_VEHICLE_MSGS_MESSAGE_AISADDFILTER_H