// Generated by gencpp from file custom_msgs/VecOfDoubles.msg
// DO NOT EDIT!


#ifndef CUSTOM_MSGS_MESSAGE_VECOFDOUBLES_H
#define CUSTOM_MSGS_MESSAGE_VECOFDOUBLES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace custom_msgs
{
template <class ContainerAllocator>
struct VecOfDoubles_
{
  typedef VecOfDoubles_<ContainerAllocator> Type;

  VecOfDoubles_()
    : dbl_vec()  {
    }
  VecOfDoubles_(const ContainerAllocator& _alloc)
    : dbl_vec(_alloc)  {
    }



   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _dbl_vec_type;
  _dbl_vec_type dbl_vec;




  typedef boost::shared_ptr< ::custom_msgs::VecOfDoubles_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_msgs::VecOfDoubles_<ContainerAllocator> const> ConstPtr;

}; // struct VecOfDoubles_

typedef ::custom_msgs::VecOfDoubles_<std::allocator<void> > VecOfDoubles;

typedef boost::shared_ptr< ::custom_msgs::VecOfDoubles > VecOfDoublesPtr;
typedef boost::shared_ptr< ::custom_msgs::VecOfDoubles const> VecOfDoublesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_msgs::VecOfDoubles_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_msgs::VecOfDoubles_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace custom_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'custom_msgs': ['/home/dsb86/ros_ws/src/learning_ros/Part_1/custom_msgs/msg'], 'roscpp': ['/opt/ros/indigo/share/roscpp/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::custom_msgs::VecOfDoubles_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_msgs::VecOfDoubles_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_msgs::VecOfDoubles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_msgs::VecOfDoubles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_msgs::VecOfDoubles_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_msgs::VecOfDoubles_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_msgs::VecOfDoubles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e9ddfb3c374c7aa1ad63fcedb2691ab2";
  }

  static const char* value(const ::custom_msgs::VecOfDoubles_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe9ddfb3c374c7aa1ULL;
  static const uint64_t static_value2 = 0xad63fcedb2691ab2ULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_msgs::VecOfDoubles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_msgs/VecOfDoubles";
  }

  static const char* value(const ::custom_msgs::VecOfDoubles_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_msgs::VecOfDoubles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[] dbl_vec\n\
";
  }

  static const char* value(const ::custom_msgs::VecOfDoubles_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_msgs::VecOfDoubles_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.dbl_vec);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct VecOfDoubles_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_msgs::VecOfDoubles_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_msgs::VecOfDoubles_<ContainerAllocator>& v)
  {
    s << indent << "dbl_vec[]" << std::endl;
    for (size_t i = 0; i < v.dbl_vec.size(); ++i)
    {
      s << indent << "  dbl_vec[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.dbl_vec[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_MSGS_MESSAGE_VECOFDOUBLES_H