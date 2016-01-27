// Generated by gencpp from file cwru_action/trajResult.msg
// DO NOT EDIT!


#ifndef CWRU_ACTION_MESSAGE_TRAJRESULT_H
#define CWRU_ACTION_MESSAGE_TRAJRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cwru_action
{
template <class ContainerAllocator>
struct trajResult_
{
  typedef trajResult_<ContainerAllocator> Type;

  trajResult_()
    : return_val(0)  {
    }
  trajResult_(const ContainerAllocator& _alloc)
    : return_val(0)  {
    }



   typedef int32_t _return_val_type;
  _return_val_type return_val;




  typedef boost::shared_ptr< ::cwru_action::trajResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cwru_action::trajResult_<ContainerAllocator> const> ConstPtr;

}; // struct trajResult_

typedef ::cwru_action::trajResult_<std::allocator<void> > trajResult;

typedef boost::shared_ptr< ::cwru_action::trajResult > trajResultPtr;
typedef boost::shared_ptr< ::cwru_action::trajResult const> trajResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cwru_action::trajResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cwru_action::trajResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace cwru_action

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'roscpp': ['/opt/ros/indigo/share/roscpp/cmake/../msg'], 'actionlib': ['/opt/ros/indigo/share/actionlib/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/indigo/share/trajectory_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'cwru_action': ['/home/dsb86/ros_ws/devel/share/cwru_action/msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::cwru_action::trajResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cwru_action::trajResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cwru_action::trajResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cwru_action::trajResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cwru_action::trajResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cwru_action::trajResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cwru_action::trajResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d272e5e4ccd8d235962127b04bb0773f";
  }

  static const char* value(const ::cwru_action::trajResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd272e5e4ccd8d235ULL;
  static const uint64_t static_value2 = 0x962127b04bb0773fULL;
};

template<class ContainerAllocator>
struct DataType< ::cwru_action::trajResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cwru_action/trajResult";
  }

  static const char* value(const ::cwru_action::trajResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cwru_action::trajResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#result definition\n\
#return_val = 1 for traj complete; traj_id should echo the input traj_id\n\
int32 return_val\n\
";
  }

  static const char* value(const ::cwru_action::trajResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cwru_action::trajResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.return_val);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct trajResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cwru_action::trajResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cwru_action::trajResult_<ContainerAllocator>& v)
  {
    s << indent << "return_val: ";
    Printer<int32_t>::stream(s, indent + "  ", v.return_val);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CWRU_ACTION_MESSAGE_TRAJRESULT_H
