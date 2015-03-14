// Generated by gencpp from file ros_vehicle_msgs/AddTaskResponse.msg
// DO NOT EDIT!


#ifndef ROS_VEHICLE_MSGS_MESSAGE_ADDTASKRESPONSE_H
#define ROS_VEHICLE_MSGS_MESSAGE_ADDTASKRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ros_vehicle_msgs/ServiceReturnBool.h>

namespace ros_vehicle_msgs
{
template <class ContainerAllocator>
struct AddTaskResponse_
{
  typedef AddTaskResponse_<ContainerAllocator> Type;

  AddTaskResponse_()
    : result()  {
    }
  AddTaskResponse_(const ContainerAllocator& _alloc)
    : result(_alloc)  {
    }



   typedef  ::ros_vehicle_msgs::ServiceReturnBool_<ContainerAllocator>  _result_type;
  _result_type result;




  typedef boost::shared_ptr< ::ros_vehicle_msgs::AddTaskResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_vehicle_msgs::AddTaskResponse_<ContainerAllocator> const> ConstPtr;

}; // struct AddTaskResponse_

typedef ::ros_vehicle_msgs::AddTaskResponse_<std::allocator<void> > AddTaskResponse;

typedef boost::shared_ptr< ::ros_vehicle_msgs::AddTaskResponse > AddTaskResponsePtr;
typedef boost::shared_ptr< ::ros_vehicle_msgs::AddTaskResponse const> AddTaskResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_vehicle_msgs::AddTaskResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_vehicle_msgs::AddTaskResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ros_vehicle_msgs::AddTaskResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_vehicle_msgs::AddTaskResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_vehicle_msgs::AddTaskResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_vehicle_msgs::AddTaskResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_vehicle_msgs::AddTaskResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_vehicle_msgs::AddTaskResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_vehicle_msgs::AddTaskResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b5e8783f50e6fc581fb0ee8ecc149e7f";
  }

  static const char* value(const ::ros_vehicle_msgs::AddTaskResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb5e8783f50e6fc58ULL;
  static const uint64_t static_value2 = 0x1fb0ee8ecc149e7fULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_vehicle_msgs::AddTaskResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_vehicle_msgs/AddTaskResponse";
  }

  static const char* value(const ::ros_vehicle_msgs::AddTaskResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_vehicle_msgs::AddTaskResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ServiceReturnBool result\n\
\n\
================================================================================\n\
MSG: ros_vehicle_msgs/ServiceReturnBool\n\
bool ok\n\
string error\n\
";
  }

  static const char* value(const ::ros_vehicle_msgs::AddTaskResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_vehicle_msgs::AddTaskResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct AddTaskResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_vehicle_msgs::AddTaskResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_vehicle_msgs::AddTaskResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    s << std::endl;
    Printer< ::ros_vehicle_msgs::ServiceReturnBool_<ContainerAllocator> >::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_VEHICLE_MSGS_MESSAGE_ADDTASKRESPONSE_H
