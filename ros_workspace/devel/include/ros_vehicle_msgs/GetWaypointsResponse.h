// Generated by gencpp from file ros_vehicle_msgs/GetWaypointsResponse.msg
// DO NOT EDIT!


#ifndef ROS_VEHICLE_MSGS_MESSAGE_GETWAYPOINTSRESPONSE_H
#define ROS_VEHICLE_MSGS_MESSAGE_GETWAYPOINTSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ros_vehicle_msgs/Waypoint.h>
#include <ros_vehicle_msgs/ServiceReturnBool.h>

namespace ros_vehicle_msgs
{
template <class ContainerAllocator>
struct GetWaypointsResponse_
{
  typedef GetWaypointsResponse_<ContainerAllocator> Type;

  GetWaypointsResponse_()
    : waypoints()
    , result()  {
    }
  GetWaypointsResponse_(const ContainerAllocator& _alloc)
    : waypoints(_alloc)
    , result(_alloc)  {
    }



   typedef std::vector< ::ros_vehicle_msgs::Waypoint_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ros_vehicle_msgs::Waypoint_<ContainerAllocator> >::other >  _waypoints_type;
  _waypoints_type waypoints;

   typedef  ::ros_vehicle_msgs::ServiceReturnBool_<ContainerAllocator>  _result_type;
  _result_type result;




  typedef boost::shared_ptr< ::ros_vehicle_msgs::GetWaypointsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_vehicle_msgs::GetWaypointsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetWaypointsResponse_

typedef ::ros_vehicle_msgs::GetWaypointsResponse_<std::allocator<void> > GetWaypointsResponse;

typedef boost::shared_ptr< ::ros_vehicle_msgs::GetWaypointsResponse > GetWaypointsResponsePtr;
typedef boost::shared_ptr< ::ros_vehicle_msgs::GetWaypointsResponse const> GetWaypointsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_vehicle_msgs::GetWaypointsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_vehicle_msgs::GetWaypointsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ros_vehicle_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'ros_vehicle_msgs': ['/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'big_actor_msgs': ['/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ros_vehicle_msgs::GetWaypointsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_vehicle_msgs::GetWaypointsResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_vehicle_msgs::GetWaypointsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_vehicle_msgs::GetWaypointsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_vehicle_msgs::GetWaypointsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_vehicle_msgs::GetWaypointsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_vehicle_msgs::GetWaypointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6b89e446d4420ec556977e9036f3bb74";
  }

  static const char* value(const ::ros_vehicle_msgs::GetWaypointsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6b89e446d4420ec5ULL;
  static const uint64_t static_value2 = 0x56977e9036f3bb74ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_vehicle_msgs::GetWaypointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_vehicle_msgs/GetWaypointsResponse";
  }

  static const char* value(const ::ros_vehicle_msgs::GetWaypointsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_vehicle_msgs::GetWaypointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Waypoint[] waypoints\n\
ServiceReturnBool result\n\
\n\
\n\
================================================================================\n\
MSG: ros_vehicle_msgs/Waypoint\n\
Header                      header\n\
uint16                      waypointId\n\
uint16                      nextWp\n\
uint16                      previousWp\n\
bool                        start\n\
bool                        stop\n\
bool                        home\n\
big_actor_msgs/LatLngAlt    position\n\
LoiterData                  loiter\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: big_actor_msgs/LatLngAlt\n\
float64 latitude\n\
float64 longitude\n\
float64 altitude\n\
================================================================================\n\
MSG: ros_vehicle_msgs/LoiterData\n\
bool active             #have loiter definition \n\
uint16 radius           #radius of loiter in metters  \n\
uint16 time_sec         #time in seconds to be in loiter\n\
uint16 times            #number of loiters to do \n\
bool clockwise          #go clockwise direction    \n\
\n\
================================================================================\n\
MSG: ros_vehicle_msgs/ServiceReturnBool\n\
bool ok\n\
string error\n\
";
  }

  static const char* value(const ::ros_vehicle_msgs::GetWaypointsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_vehicle_msgs::GetWaypointsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.waypoints);
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct GetWaypointsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_vehicle_msgs::GetWaypointsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_vehicle_msgs::GetWaypointsResponse_<ContainerAllocator>& v)
  {
    s << indent << "waypoints[]" << std::endl;
    for (size_t i = 0; i < v.waypoints.size(); ++i)
    {
      s << indent << "  waypoints[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ros_vehicle_msgs::Waypoint_<ContainerAllocator> >::stream(s, indent + "    ", v.waypoints[i]);
    }
    s << indent << "result: ";
    s << std::endl;
    Printer< ::ros_vehicle_msgs::ServiceReturnBool_<ContainerAllocator> >::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_VEHICLE_MSGS_MESSAGE_GETWAYPOINTSRESPONSE_H