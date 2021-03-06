// Generated by gencpp from file cwru_action/cart_moveGoal.msg
// DO NOT EDIT!


#ifndef CWRU_ACTION_MESSAGE_CART_MOVEGOAL_H
#define CWRU_ACTION_MESSAGE_CART_MOVEGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseStamped.h>

namespace cwru_action
{
template <class ContainerAllocator>
struct cart_moveGoal_
{
  typedef cart_moveGoal_<ContainerAllocator> Type;

  cart_moveGoal_()
    : des_pose_gripper1()
    , des_pose_gripper2()
    , gripper_jaw_angle1(0.0)
    , gripper_jaw_angle2(0.0)
    , move_time(0.0)  {
    }
  cart_moveGoal_(const ContainerAllocator& _alloc)
    : des_pose_gripper1(_alloc)
    , des_pose_gripper2(_alloc)
    , gripper_jaw_angle1(0.0)
    , gripper_jaw_angle2(0.0)
    , move_time(0.0)  {
    }



   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _des_pose_gripper1_type;
  _des_pose_gripper1_type des_pose_gripper1;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _des_pose_gripper2_type;
  _des_pose_gripper2_type des_pose_gripper2;

   typedef double _gripper_jaw_angle1_type;
  _gripper_jaw_angle1_type gripper_jaw_angle1;

   typedef double _gripper_jaw_angle2_type;
  _gripper_jaw_angle2_type gripper_jaw_angle2;

   typedef double _move_time_type;
  _move_time_type move_time;




  typedef boost::shared_ptr< ::cwru_action::cart_moveGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cwru_action::cart_moveGoal_<ContainerAllocator> const> ConstPtr;

}; // struct cart_moveGoal_

typedef ::cwru_action::cart_moveGoal_<std::allocator<void> > cart_moveGoal;

typedef boost::shared_ptr< ::cwru_action::cart_moveGoal > cart_moveGoalPtr;
typedef boost::shared_ptr< ::cwru_action::cart_moveGoal const> cart_moveGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cwru_action::cart_moveGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cwru_action::cart_moveGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace cwru_action

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'roscpp': ['/opt/ros/indigo/share/roscpp/cmake/../msg'], 'actionlib': ['/opt/ros/indigo/share/actionlib/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/indigo/share/trajectory_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'cwru_action': ['/home/dsb86/ros_ws/devel/share/cwru_action/msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::cwru_action::cart_moveGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cwru_action::cart_moveGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cwru_action::cart_moveGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cwru_action::cart_moveGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cwru_action::cart_moveGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cwru_action::cart_moveGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cwru_action::cart_moveGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d2631f788d8e0cc2d280c449b075f8f9";
  }

  static const char* value(const ::cwru_action::cart_moveGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd2631f788d8e0cc2ULL;
  static const uint64_t static_value2 = 0xd280c449b075f8f9ULL;
};

template<class ContainerAllocator>
struct DataType< ::cwru_action::cart_moveGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cwru_action/cart_moveGoal";
  }

  static const char* value(const ::cwru_action::cart_moveGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cwru_action::cart_moveGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#This action message must specify desired pose for gripper1, jaw opening for gripper1,\n\
# desired pose for gripper2, jaw opening for gripper 2, and desired duration of move (in sec)\n\
#goal:\n\
geometry_msgs/PoseStamped des_pose_gripper1\n\
geometry_msgs/PoseStamped des_pose_gripper2\n\
float64 gripper_jaw_angle1\n\
float64 gripper_jaw_angle2\n\
float64 move_time\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
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
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::cwru_action::cart_moveGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cwru_action::cart_moveGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.des_pose_gripper1);
      stream.next(m.des_pose_gripper2);
      stream.next(m.gripper_jaw_angle1);
      stream.next(m.gripper_jaw_angle2);
      stream.next(m.move_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct cart_moveGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cwru_action::cart_moveGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cwru_action::cart_moveGoal_<ContainerAllocator>& v)
  {
    s << indent << "des_pose_gripper1: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.des_pose_gripper1);
    s << indent << "des_pose_gripper2: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.des_pose_gripper2);
    s << indent << "gripper_jaw_angle1: ";
    Printer<double>::stream(s, indent + "  ", v.gripper_jaw_angle1);
    s << indent << "gripper_jaw_angle2: ";
    Printer<double>::stream(s, indent + "  ", v.gripper_jaw_angle2);
    s << indent << "move_time: ";
    Printer<double>::stream(s, indent + "  ", v.move_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CWRU_ACTION_MESSAGE_CART_MOVEGOAL_H
