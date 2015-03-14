// Generated by gencpp from file ros_vehicle_msgs/Waypoint.msg
// DO NOT EDIT!


#ifndef ROS_VEHICLE_MSGS_MESSAGE_WAYPOINT_H
#define ROS_VEHICLE_MSGS_MESSAGE_WAYPOINT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <big_actor_msgs/LatLngAlt.h>
#include <ros_vehicle_msgs/LoiterData.h>

namespace ros_vehicle_msgs
{
template <class ContainerAllocator>
struct Waypoint_
{
  typedef Waypoint_<ContainerAllocator> Type;

  Waypoint_()
    : header()
    , waypointId(0)
    , nextWp(0)
    , previousWp(0)
    , start(false)
    , stop(false)
    , home(false)
    , position()
    , loiter()  {
    }
  Waypoint_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , waypointId(0)
    , nextWp(0)
    , previousWp(0)
    , start(false)
    , stop(false)
    , home(false)
    , position(_alloc)
    , loiter(_alloc)  {
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint16_t _waypointId_type;
  _waypointId_type waypointId;

   typedef uint16_t _nextWp_type;
  _nextWp_type nextWp;

   typedef uint16_t _previousWp_type;
  _previousWp_type previousWp;

   typedef uint8_t _start_type;
  _start_type start;

   typedef uint8_t _stop_type;
  _stop_type stop;

   typedef uint8_t _home_type;
  _home_type home;

   typedef  ::big_actor_msgs::LatLngAlt_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef  ::ros_vehicle_msgs::LoiterData_<ContainerAllocator>  _loiter_type;
  _loiter_type loiter;




  typedef boost::shared_ptr< ::ros_vehicle_msgs::Waypoint_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_vehicle_msgs::Waypoint_<ContainerAllocator> const> ConstPtr;

}; // struct Waypoint_

typedef ::ros_vehicle_msgs::Waypoint_<std::allocator<void> > Waypoint;

typedef boost::shared_ptr< ::ros_vehicle_msgs::Waypoint > WaypointPtr;
typedef boost::shared_ptr< ::ros_vehicle_msgs::Waypoint const> WaypointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_vehicle_msgs::Waypoint_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_vehicle_msgs::Waypoint_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ros_vehicle_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'ros_vehicle_msgs': ['/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'big_actor_msgs': ['/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ros_vehicle_msgs::Waypoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_vehicle_msgs::Waypoint_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_vehicle_msgs::Waypoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_vehicle_msgs::Waypoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_vehicle_msgs::Waypoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_vehicle_msgs::Waypoint_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_vehicle_msgs::Waypoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b9b6849ca874b55bd9f22fcc2f58a0b1";
  }

  static const char* value(const ::ros_vehicle_msgs::Waypoint_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb9b6849ca874b55bULL;
  static const uint64_t static_value2 = 0xd9f22fcc2f58a0b1ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_vehicle_msgs::Waypoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_vehicle_msgs/Waypoint";
  }

  static const char* value(const ::ros_vehicle_msgs::Waypoint_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_vehicle_msgs::Waypoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header                      header\n\
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
";
  }

  static const char* value(const ::ros_vehicle_msgs::Waypoint_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_vehicle_msgs::Waypoint_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.waypointId);
      stream.next(m.nextWp);
      stream.next(m.previousWp);
      stream.next(m.start);
      stream.next(m.stop);
      stream.next(m.home);
      stream.next(m.position);
      stream.next(m.loiter);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct Waypoint_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_vehicle_msgs::Waypoint_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_vehicle_msgs::Waypoint_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "waypointId: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.waypointId);
    s << indent << "nextWp: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.nextWp);
    s << indent << "previousWp: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.previousWp);
    s << indent << "start: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.start);
    s << indent << "stop: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.stop);
    s << indent << "home: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.home);
    s << indent << "position: ";
    s << std::endl;
    Printer< ::big_actor_msgs::LatLngAlt_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "loiter: ";
    s << std::endl;
    Printer< ::ros_vehicle_msgs::LoiterData_<ContainerAllocator> >::stream(s, indent + "  ", v.loiter);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_VEHICLE_MSGS_MESSAGE_WAYPOINT_H