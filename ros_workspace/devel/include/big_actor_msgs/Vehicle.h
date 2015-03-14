// Generated by gencpp from file big_actor_msgs/Vehicle.msg
// DO NOT EDIT!


#ifndef BIG_ACTOR_MSGS_MESSAGE_VEHICLE_H
#define BIG_ACTOR_MSGS_MESSAGE_VEHICLE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <big_actor_msgs/LatLngAlt.h>
#include <big_actor_msgs/Network.h>

namespace big_actor_msgs
{
template <class ContainerAllocator>
struct Vehicle_
{
  typedef Vehicle_<ContainerAllocator> Type;

  Vehicle_()
    : timeStamp(0)
    , vehicle_ttl(0)
    , vehicleId(0)
    , position()
    , heading(0.0)
    , taskId(0)
    , taskState(0)
    , vehicleState(0)
    , vehicleType(0)
    , name()
    , networks()  {
    }
  Vehicle_(const ContainerAllocator& _alloc)
    : timeStamp(0)
    , vehicle_ttl(0)
    , vehicleId(0)
    , position(_alloc)
    , heading(0.0)
    , taskId(0)
    , taskState(0)
    , vehicleState(0)
    , vehicleType(0)
    , name(_alloc)
    , networks(_alloc)  {
    }



   typedef uint64_t _timeStamp_type;
  _timeStamp_type timeStamp;

   typedef uint64_t _vehicle_ttl_type;
  _vehicle_ttl_type vehicle_ttl;

   typedef uint64_t _vehicleId_type;
  _vehicleId_type vehicleId;

   typedef  ::big_actor_msgs::LatLngAlt_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef float _heading_type;
  _heading_type heading;

   typedef uint32_t _taskId_type;
  _taskId_type taskId;

   typedef uint8_t _taskState_type;
  _taskState_type taskState;

   typedef uint8_t _vehicleState_type;
  _vehicleState_type vehicleState;

   typedef uint8_t _vehicleType_type;
  _vehicleType_type vehicleType;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef std::vector< ::big_actor_msgs::Network_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::big_actor_msgs::Network_<ContainerAllocator> >::other >  _networks_type;
  _networks_type networks;


    enum { VS_NONE = 0u };
     enum { VS_IDLE = 1u };
     enum { VS_BUSY = 2u };
     enum { VT_NONE = 0u };
     enum { VT_QUADROTOR = 1u };
     enum { VT_VESSEL = 2u };
     enum { VT_DRIFTER = 3u };
     enum { VT_MODEL_AIRPLANE = 4u };
     enum { VT_GROUND_STATION = 5u };
 

  typedef boost::shared_ptr< ::big_actor_msgs::Vehicle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::big_actor_msgs::Vehicle_<ContainerAllocator> const> ConstPtr;

}; // struct Vehicle_

typedef ::big_actor_msgs::Vehicle_<std::allocator<void> > Vehicle;

typedef boost::shared_ptr< ::big_actor_msgs::Vehicle > VehiclePtr;
typedef boost::shared_ptr< ::big_actor_msgs::Vehicle const> VehicleConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::big_actor_msgs::Vehicle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::big_actor_msgs::Vehicle_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace big_actor_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'big_actor_msgs': ['/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::big_actor_msgs::Vehicle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::big_actor_msgs::Vehicle_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::big_actor_msgs::Vehicle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::big_actor_msgs::Vehicle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::big_actor_msgs::Vehicle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::big_actor_msgs::Vehicle_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::big_actor_msgs::Vehicle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6a2ecde8dc46fa2f20f77fe7b2d94457";
  }

  static const char* value(const ::big_actor_msgs::Vehicle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6a2ecde8dc46fa2fULL;
  static const uint64_t static_value2 = 0x20f77fe7b2d94457ULL;
};

template<class ContainerAllocator>
struct DataType< ::big_actor_msgs::Vehicle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "big_actor_msgs/Vehicle";
  }

  static const char* value(const ::big_actor_msgs::Vehicle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::big_actor_msgs::Vehicle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).\n\
uint64 vehicle_ttl            # Time-to-live. If message is not updated, it is removed from sse\n\
uint64 vehicleId              # Unique vehicle id\n\
LatLngAlt position            # Vehicle position\n\
float32 heading               # Vehicle heading\n\
uint32 taskId                 # Currently processed task\n\
uint8 taskState               # see Task.status\n\
uint8 vehicleState            # Status of the vehicle\n\
    uint8 VS_NONE=0\n\
    uint8 VS_IDLE=1           # Vehicle idles\n\
    uint8 VS_BUSY=2           # Vehicle is working at task specified in taskId\n\
uint8 vehicleType\n\
    uint8 VT_NONE=0\n\
    uint8 VT_QUADROTOR=1\n\
    uint8 VT_VESSEL=2 \n\
    uint8 VT_DRIFTER=3\n\
    uint8 VT_MODEL_AIRPLANE=4\n\
    uint8 VT_GROUND_STATION=5\n\
string name                   # Vehicle name\n\
Network[] networks            # Networks known to the vehicle.\n\
\n\
================================================================================\n\
MSG: big_actor_msgs/LatLngAlt\n\
float64 latitude\n\
float64 longitude\n\
float64 altitude\n\
================================================================================\n\
MSG: big_actor_msgs/Network\n\
uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).\n\
uint8 type                    # Network type (Physical Layer).\n\
	uint8 NT_NONE=0\n\
	uint8 NT_ETHERNET_10M=1\n\
	uint8 NT_ETHERNET_100M=2\n\
	uint8 NT_ETHERNET_1G=3\n\
	uint8 NT_ETHERNET_10G=4\n\
	uint8 NT_WIFI_2MB=10\n\
	uint8 NT_WIFI_11MB=11\n\
	uint8 NT_WIFI_27MB=12\n\
	uint8 NT_WIFI_54MB=13\n\
	uint8 NT_WIFI_600MB=14\n\
	uint8 NT_WIFI_1300MB=15\n\
	uint8 NT_WIFI_7000MB=16\n\
	uint8 NT_MESH_500kB=20\n\
	uint8 NT_ACOUSTIC_7kB=30\n\
	uint8 NT_ACOUSTIC_9kB=31\n\
	uint8 NT_ACOUSTIC_14kB=32\n\
	uint8 NT_ACOUSTIC_31kB=33\n\
    uint8 NT_PICCOLO=40\n\
    uint8 NT_AIS=50\n\
uint32 address                # TCP/IP network address, Piccolo channel number, ...\n\
uint32 mask                   # TCP/IP network mask or zero if not applicable\n\
";
  }

  static const char* value(const ::big_actor_msgs::Vehicle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::big_actor_msgs::Vehicle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.timeStamp);
      stream.next(m.vehicle_ttl);
      stream.next(m.vehicleId);
      stream.next(m.position);
      stream.next(m.heading);
      stream.next(m.taskId);
      stream.next(m.taskState);
      stream.next(m.vehicleState);
      stream.next(m.vehicleType);
      stream.next(m.name);
      stream.next(m.networks);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct Vehicle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::big_actor_msgs::Vehicle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::big_actor_msgs::Vehicle_<ContainerAllocator>& v)
  {
    s << indent << "timeStamp: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.timeStamp);
    s << indent << "vehicle_ttl: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.vehicle_ttl);
    s << indent << "vehicleId: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.vehicleId);
    s << indent << "position: ";
    s << std::endl;
    Printer< ::big_actor_msgs::LatLngAlt_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "heading: ";
    Printer<float>::stream(s, indent + "  ", v.heading);
    s << indent << "taskId: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.taskId);
    s << indent << "taskState: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.taskState);
    s << indent << "vehicleState: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.vehicleState);
    s << indent << "vehicleType: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.vehicleType);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "networks[]" << std::endl;
    for (size_t i = 0; i < v.networks.size(); ++i)
    {
      s << indent << "  networks[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::big_actor_msgs::Network_<ContainerAllocator> >::stream(s, indent + "    ", v.networks[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // BIG_ACTOR_MSGS_MESSAGE_VEHICLE_H
