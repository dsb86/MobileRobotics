// Generated by gencpp from file cwru_action/cwru_baxter_cart_moveActionGoal.msg
// DO NOT EDIT!


#ifndef CWRU_ACTION_MESSAGE_CWRU_BAXTER_CART_MOVEACTIONGOAL_H
#define CWRU_ACTION_MESSAGE_CWRU_BAXTER_CART_MOVEACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <cwru_action/cwru_baxter_cart_moveGoal.h>

namespace cwru_action
{
template <class ContainerAllocator>
struct cwru_baxter_cart_moveActionGoal_
{
  typedef cwru_baxter_cart_moveActionGoal_<ContainerAllocator> Type;

  cwru_baxter_cart_moveActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  cwru_baxter_cart_moveActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::cwru_action::cwru_baxter_cart_moveGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;




  typedef boost::shared_ptr< ::cwru_action::cwru_baxter_cart_moveActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cwru_action::cwru_baxter_cart_moveActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct cwru_baxter_cart_moveActionGoal_

typedef ::cwru_action::cwru_baxter_cart_moveActionGoal_<std::allocator<void> > cwru_baxter_cart_moveActionGoal;

typedef boost::shared_ptr< ::cwru_action::cwru_baxter_cart_moveActionGoal > cwru_baxter_cart_moveActionGoalPtr;
typedef boost::shared_ptr< ::cwru_action::cwru_baxter_cart_moveActionGoal const> cwru_baxter_cart_moveActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cwru_action::cwru_baxter_cart_moveActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cwru_action::cwru_baxter_cart_moveActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace cwru_action

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'roscpp': ['/opt/ros/indigo/share/roscpp/cmake/../msg'], 'actionlib': ['/opt/ros/indigo/share/actionlib/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/indigo/share/trajectory_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'cwru_action': ['/home/dsb86/ros_ws/devel/share/cwru_action/msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::cwru_action::cwru_baxter_cart_moveActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cwru_action::cwru_baxter_cart_moveActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cwru_action::cwru_baxter_cart_moveActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cwru_action::cwru_baxter_cart_moveActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cwru_action::cwru_baxter_cart_moveActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cwru_action::cwru_baxter_cart_moveActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cwru_action::cwru_baxter_cart_moveActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0dd8083c14e4b775a204ee3c6bf9d4ed";
  }

  static const char* value(const ::cwru_action::cwru_baxter_cart_moveActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0dd8083c14e4b775ULL;
  static const uint64_t static_value2 = 0xa204ee3c6bf9d4edULL;
};

template<class ContainerAllocator>
struct DataType< ::cwru_action::cwru_baxter_cart_moveActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cwru_action/cwru_baxter_cart_moveActionGoal";
  }

  static const char* value(const ::cwru_action::cwru_baxter_cart_moveActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cwru_action::cwru_baxter_cart_moveActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
cwru_baxter_cart_moveGoal goal\n\
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
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: cwru_action/cwru_baxter_cart_moveGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#This action message is specialized for Baxter\n\
#minimally, it may contain just a command code\n\
#more generally, it may contain desired left and right tool-frame poses, as well\n\
# as gripper poses (gripper opening--interpreted for specific grippers, e.g. Yale hand)\n\
# and an arrival time for the move\n\
# It is assumed that a move starts from the previous commanded pose, or from the current joint state\n\
\n\
#return codes provide status info, e.g. if a proposed move is reachable\n\
\n\
#define message constants:\n\
uint8 ARM_TEST_MODE =0\n\
\n\
#queries\n\
uint8 ARM_IS_SERVER_BUSY_QUERY = 1\n\
\n\
uint8 ARM_QUERY_IS_PATH_VALID = 2\n\
uint8 RT_ARM_GET_Q_DATA = 3\n\
uint8 LEFT_ARM_GET_Q_DATA = 4\n\
uint8 RT_ARM_GET_TOOL_POSE = 5\n\
uint8 LEFT_ARM_GET_TOOL_POSE = 5\n\
\n\
#requests for motion plans; need to extend this to left arm and both arms\n\
uint8 RT_ARM_PLAN_PATH_CURRENT_TO_GOAL_POSE=20 #plan paths from current arm pose\n\
uint8 RT_ARM_PLAN_PATH_CURRENT_TO_PRE_POSE=21\n\
\n\
uint8 RT_ARM_PLAN_JSPACE_PATH_CURRENT_TO_PRE_POSE=22\n\
uint8 RT_ARM_PLAN_JSPACE_PATH_CURRENT_TO_QGOAL=23\n\
\n\
#cartesian path from specified joint-space start and end;\n\
# orientation interpolation is a bit odd\n\
uint8 RT_ARM_PLAN_PATH_QSTART_TO_QGOAL = 25\n\
uint8 RT_ARM_PLAN_PATH_QSTART_TO_ADES = 24 #specify start and end, j-space start, affine desired end\n\
\n\
#uint8 RT_ARM_PLAN_PATH_ASTART_TO_QGOAL = 26 #specified affine start, joint-space goal\n\
uint8 RT_ARM_PLAN_PATH_CURRENT_TO_GOAL_DP_XYZ = 27 #rectilinear translation w/ fixed orientation\n\
\n\
# request to preview plan:\n\
uint8 RT_ARM_DISPLAY_TRAJECTORY = 50\n\
\n\
#MOVE commands!\n\
uint8 RT_ARM_EXECUTE_PLANNED_PATH = 100\n\
\n\
#uint8 RT_ARM_DESCEND_20CM=101\n\
#uint8 RT_ARM_DEPART_20CM=102\n\
\n\
\n\
#goal:\n\
int32 command_code\n\
geometry_msgs/PoseStamped des_pose_gripper_right\n\
geometry_msgs/PoseStamped des_pose_gripper_left\n\
float64 gripper_opening_right\n\
float64 gripper_opening_left\n\
float64[] arm_dp_right #to command a 3-D vector displacement relative to current pose, fixed orientation\n\
float64[] arm_dp_left\n\
float64[] q_goal_right\n\
float64[] q_goal_left\n\
float64 move_time\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
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

  static const char* value(const ::cwru_action::cwru_baxter_cart_moveActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cwru_action::cwru_baxter_cart_moveActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct cwru_baxter_cart_moveActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cwru_action::cwru_baxter_cart_moveActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cwru_action::cwru_baxter_cart_moveActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::cwru_action::cwru_baxter_cart_moveGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CWRU_ACTION_MESSAGE_CWRU_BAXTER_CART_MOVEACTIONGOAL_H
