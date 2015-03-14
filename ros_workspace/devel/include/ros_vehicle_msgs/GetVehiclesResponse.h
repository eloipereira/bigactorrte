// Generated by gencpp from file ros_vehicle_msgs/GetVehiclesResponse.msg
// DO NOT EDIT!


#ifndef ROS_VEHICLE_MSGS_MESSAGE_GETVEHICLESRESPONSE_H
#define ROS_VEHICLE_MSGS_MESSAGE_GETVEHICLESRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <big_actor_msgs/Vehicle.h>

namespace ros_vehicle_msgs
{
template <class ContainerAllocator>
struct GetVehiclesResponse_
{
  typedef GetVehiclesResponse_<ContainerAllocator> Type;

  GetVehiclesResponse_()
    : vehicles()  {
    }
  GetVehiclesResponse_(const ContainerAllocator& _alloc)
    : vehicles(_alloc)  {
    }



   typedef std::vector< ::big_actor_msgs::Vehicle_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::big_actor_msgs::Vehicle_<ContainerAllocator> >::other >  _vehicles_type;
  _vehicles_type vehicles;




  typedef boost::shared_ptr< ::ros_vehicle_msgs::GetVehiclesResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_vehicle_msgs::GetVehiclesResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetVehiclesResponse_

typedef ::ros_vehicle_msgs::GetVehiclesResponse_<std::allocator<void> > GetVehiclesResponse;

typedef boost::shared_ptr< ::ros_vehicle_msgs::GetVehiclesResponse > GetVehiclesResponsePtr;
typedef boost::shared_ptr< ::ros_vehicle_msgs::GetVehiclesResponse const> GetVehiclesResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_vehicle_msgs::GetVehiclesResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_vehicle_msgs::GetVehiclesResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ros_vehicle_msgs::GetVehiclesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_vehicle_msgs::GetVehiclesResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_vehicle_msgs::GetVehiclesResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_vehicle_msgs::GetVehiclesResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_vehicle_msgs::GetVehiclesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_vehicle_msgs::GetVehiclesResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_vehicle_msgs::GetVehiclesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fc55862084b8f5e07baaa8d8b29bc212";
  }

  static const char* value(const ::ros_vehicle_msgs::GetVehiclesResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfc55862084b8f5e0ULL;
  static const uint64_t static_value2 = 0x7baaa8d8b29bc212ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_vehicle_msgs::GetVehiclesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_vehicle_msgs/GetVehiclesResponse";
  }

  static const char* value(const ::ros_vehicle_msgs::GetVehiclesResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_vehicle_msgs::GetVehiclesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "big_actor_msgs/Vehicle[] vehicles\n\
\n\
================================================================================\n\
MSG: big_actor_msgs/Vehicle\n\
uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).\n\
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

  static const char* value(const ::ros_vehicle_msgs::GetVehiclesResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_vehicle_msgs::GetVehiclesResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.vehicles);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct GetVehiclesResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_vehicle_msgs::GetVehiclesResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_vehicle_msgs::GetVehiclesResponse_<ContainerAllocator>& v)
  {
    s << indent << "vehicles[]" << std::endl;
    for (size_t i = 0; i < v.vehicles.size(); ++i)
    {
      s << indent << "  vehicles[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::big_actor_msgs::Vehicle_<ContainerAllocator> >::stream(s, indent + "    ", v.vehicles[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_VEHICLE_MSGS_MESSAGE_GETVEHICLESRESPONSE_H
