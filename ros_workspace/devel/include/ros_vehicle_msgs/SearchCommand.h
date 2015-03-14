// Generated by gencpp from file ros_vehicle_msgs/SearchCommand.msg
// DO NOT EDIT!


#ifndef ROS_VEHICLE_MSGS_MESSAGE_SEARCHCOMMAND_H
#define ROS_VEHICLE_MSGS_MESSAGE_SEARCHCOMMAND_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <big_actor_msgs/Location.h>

namespace ros_vehicle_msgs
{
template <class ContainerAllocator>
struct SearchCommand_
{
  typedef SearchCommand_<ContainerAllocator> Type;

  SearchCommand_()
    : vehicleId(0)
    , area()  {
    }
  SearchCommand_(const ContainerAllocator& _alloc)
    : vehicleId(0)
    , area(_alloc)  {
    }



   typedef uint64_t _vehicleId_type;
  _vehicleId_type vehicleId;

   typedef  ::big_actor_msgs::Location_<ContainerAllocator>  _area_type;
  _area_type area;




  typedef boost::shared_ptr< ::ros_vehicle_msgs::SearchCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_vehicle_msgs::SearchCommand_<ContainerAllocator> const> ConstPtr;

}; // struct SearchCommand_

typedef ::ros_vehicle_msgs::SearchCommand_<std::allocator<void> > SearchCommand;

typedef boost::shared_ptr< ::ros_vehicle_msgs::SearchCommand > SearchCommandPtr;
typedef boost::shared_ptr< ::ros_vehicle_msgs::SearchCommand const> SearchCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_vehicle_msgs::SearchCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_vehicle_msgs::SearchCommand_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ros_vehicle_msgs::SearchCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_vehicle_msgs::SearchCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_vehicle_msgs::SearchCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_vehicle_msgs::SearchCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_vehicle_msgs::SearchCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_vehicle_msgs::SearchCommand_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_vehicle_msgs::SearchCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0ce12ec05ccec5f384cbcc77352b2b49";
  }

  static const char* value(const ::ros_vehicle_msgs::SearchCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0ce12ec05ccec5f3ULL;
  static const uint64_t static_value2 = 0x84cbcc77352b2b49ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_vehicle_msgs::SearchCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_vehicle_msgs/SearchCommand";
  }

  static const char* value(const ::ros_vehicle_msgs::SearchCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_vehicle_msgs::SearchCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint64 vehicleId\n\
big_actor_msgs/Location area\n\
================================================================================\n\
MSG: big_actor_msgs/Location\n\
uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).\n\
uint64 location_ttl           #	Time-to-live. If message is not updated, it is removed from sse\n\
uint32 locationId             # Unique location id\n\
LatLng[] boundaries           # Location vertices (polygon)\n\
float32 minimumAltitude       # Lower altitude bound of the location\n\
float32 maximumAltitude       # Upper altitude bound of the location\n\
uint8 locationType\n\
    uint8 LT_NONE=0\n\
    uint8 LT_SURFACE=1\n\
    uint8 LT_AIR_SPACE=2\n\
    uint8 LT_UNDERWATER=3\n\
    uint8 LT_OIL_SPILL=4\n\
string name                   # Location name\n\
\n\
================================================================================\n\
MSG: big_actor_msgs/LatLng\n\
float64 latitude\n\
float64 longitude\n\
";
  }

  static const char* value(const ::ros_vehicle_msgs::SearchCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_vehicle_msgs::SearchCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.vehicleId);
      stream.next(m.area);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct SearchCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_vehicle_msgs::SearchCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_vehicle_msgs::SearchCommand_<ContainerAllocator>& v)
  {
    s << indent << "vehicleId: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.vehicleId);
    s << indent << "area: ";
    s << std::endl;
    Printer< ::big_actor_msgs::Location_<ContainerAllocator> >::stream(s, indent + "  ", v.area);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_VEHICLE_MSGS_MESSAGE_SEARCHCOMMAND_H