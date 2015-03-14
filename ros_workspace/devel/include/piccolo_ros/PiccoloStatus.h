// Generated by gencpp from file piccolo_ros/PiccoloStatus.msg
// DO NOT EDIT!


#ifndef PICCOLO_ROS_MESSAGE_PICCOLOSTATUS_H
#define PICCOLO_ROS_MESSAGE_PICCOLOSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace piccolo_ros
{
template <class ContainerAllocator>
struct PiccoloStatus_
{
  typedef PiccoloStatus_<ContainerAllocator> Type;

  PiccoloStatus_()
    : header()
    , vehicleid(0)
    , orbitRadius(0)
    , trackerStatus(0)
    , timeToWp(0)
    , wpFrom(0)
    , wpTo(0)
    , airBoundaryViolated(false)
    , autopilotEngineKill(false)
    , commsTimeout(false)
    , fligthTimerElapsed(false)
    , fligthTermination(false)
    , gpsTimeout(false)
    , orbiting(false)  {
    }
  PiccoloStatus_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , vehicleid(0)
    , orbitRadius(0)
    , trackerStatus(0)
    , timeToWp(0)
    , wpFrom(0)
    , wpTo(0)
    , airBoundaryViolated(false)
    , autopilotEngineKill(false)
    , commsTimeout(false)
    , fligthTimerElapsed(false)
    , fligthTermination(false)
    , gpsTimeout(false)
    , orbiting(false)  {
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint16_t _vehicleid_type;
  _vehicleid_type vehicleid;

   typedef uint8_t _orbitRadius_type;
  _orbitRadius_type orbitRadius;

   typedef uint8_t _trackerStatus_type;
  _trackerStatus_type trackerStatus;

   typedef uint16_t _timeToWp_type;
  _timeToWp_type timeToWp;

   typedef uint8_t _wpFrom_type;
  _wpFrom_type wpFrom;

   typedef uint8_t _wpTo_type;
  _wpTo_type wpTo;

   typedef uint8_t _airBoundaryViolated_type;
  _airBoundaryViolated_type airBoundaryViolated;

   typedef uint8_t _autopilotEngineKill_type;
  _autopilotEngineKill_type autopilotEngineKill;

   typedef uint8_t _commsTimeout_type;
  _commsTimeout_type commsTimeout;

   typedef uint8_t _fligthTimerElapsed_type;
  _fligthTimerElapsed_type fligthTimerElapsed;

   typedef uint8_t _fligthTermination_type;
  _fligthTermination_type fligthTermination;

   typedef uint8_t _gpsTimeout_type;
  _gpsTimeout_type gpsTimeout;

   typedef uint8_t _orbiting_type;
  _orbiting_type orbiting;




  typedef boost::shared_ptr< ::piccolo_ros::PiccoloStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::piccolo_ros::PiccoloStatus_<ContainerAllocator> const> ConstPtr;

}; // struct PiccoloStatus_

typedef ::piccolo_ros::PiccoloStatus_<std::allocator<void> > PiccoloStatus;

typedef boost::shared_ptr< ::piccolo_ros::PiccoloStatus > PiccoloStatusPtr;
typedef boost::shared_ptr< ::piccolo_ros::PiccoloStatus const> PiccoloStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::piccolo_ros::PiccoloStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::piccolo_ros::PiccoloStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace piccolo_ros

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'piccolo_ros': ['/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::piccolo_ros::PiccoloStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::piccolo_ros::PiccoloStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::piccolo_ros::PiccoloStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::piccolo_ros::PiccoloStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::piccolo_ros::PiccoloStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::piccolo_ros::PiccoloStatus_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::piccolo_ros::PiccoloStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "269318ddb8948106dd3e47eca4424ca7";
  }

  static const char* value(const ::piccolo_ros::PiccoloStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x269318ddb8948106ULL;
  static const uint64_t static_value2 = 0xdd3e47eca4424ca7ULL;
};

template<class ContainerAllocator>
struct DataType< ::piccolo_ros::PiccoloStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "piccolo_ros/PiccoloStatus";
  }

  static const char* value(const ::piccolo_ros::PiccoloStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::piccolo_ros::PiccoloStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
uint16 vehicleid\n\
uint8 orbitRadius\n\
uint8 trackerStatus\n\
uint16 timeToWp\n\
uint8 wpFrom\n\
uint8 wpTo\n\
bool airBoundaryViolated\n\
bool autopilotEngineKill\n\
bool commsTimeout\n\
bool fligthTimerElapsed\n\
bool fligthTermination\n\
bool gpsTimeout\n\
bool orbiting\n\
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
";
  }

  static const char* value(const ::piccolo_ros::PiccoloStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::piccolo_ros::PiccoloStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.vehicleid);
      stream.next(m.orbitRadius);
      stream.next(m.trackerStatus);
      stream.next(m.timeToWp);
      stream.next(m.wpFrom);
      stream.next(m.wpTo);
      stream.next(m.airBoundaryViolated);
      stream.next(m.autopilotEngineKill);
      stream.next(m.commsTimeout);
      stream.next(m.fligthTimerElapsed);
      stream.next(m.fligthTermination);
      stream.next(m.gpsTimeout);
      stream.next(m.orbiting);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct PiccoloStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::piccolo_ros::PiccoloStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::piccolo_ros::PiccoloStatus_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "vehicleid: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.vehicleid);
    s << indent << "orbitRadius: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.orbitRadius);
    s << indent << "trackerStatus: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.trackerStatus);
    s << indent << "timeToWp: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.timeToWp);
    s << indent << "wpFrom: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.wpFrom);
    s << indent << "wpTo: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.wpTo);
    s << indent << "airBoundaryViolated: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.airBoundaryViolated);
    s << indent << "autopilotEngineKill: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.autopilotEngineKill);
    s << indent << "commsTimeout: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.commsTimeout);
    s << indent << "fligthTimerElapsed: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.fligthTimerElapsed);
    s << indent << "fligthTermination: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.fligthTermination);
    s << indent << "gpsTimeout: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.gpsTimeout);
    s << indent << "orbiting: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.orbiting);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PICCOLO_ROS_MESSAGE_PICCOLOSTATUS_H
