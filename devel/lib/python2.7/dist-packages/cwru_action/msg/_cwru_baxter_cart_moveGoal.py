# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cwru_action/cwru_baxter_cart_moveGoal.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class cwru_baxter_cart_moveGoal(genpy.Message):
  _md5sum = "83373413fae14e7b7b892d47e50f22b1"
  _type = "cwru_action/cwru_baxter_cart_moveGoal"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#This action message is specialized for Baxter
#minimally, it may contain just a command code
#more generally, it may contain desired left and right tool-frame poses, as well
# as gripper poses (gripper opening--interpreted for specific grippers, e.g. Yale hand)
# and an arrival time for the move
# It is assumed that a move starts from the previous commanded pose, or from the current joint state

#return codes provide status info, e.g. if a proposed move is reachable

#define message constants:
uint8 ARM_TEST_MODE =0

#queries
uint8 ARM_IS_SERVER_BUSY_QUERY = 1

uint8 ARM_QUERY_IS_PATH_VALID = 2
uint8 RT_ARM_GET_Q_DATA = 3
uint8 LEFT_ARM_GET_Q_DATA = 4
uint8 RT_ARM_GET_TOOL_POSE = 5
uint8 LEFT_ARM_GET_TOOL_POSE = 5

#requests for motion plans; need to extend this to left arm and both arms
uint8 RT_ARM_PLAN_PATH_CURRENT_TO_GOAL_POSE=20 #plan paths from current arm pose
uint8 RT_ARM_PLAN_PATH_CURRENT_TO_PRE_POSE=21

uint8 RT_ARM_PLAN_JSPACE_PATH_CURRENT_TO_PRE_POSE=22
uint8 RT_ARM_PLAN_JSPACE_PATH_CURRENT_TO_QGOAL=23

#cartesian path from specified joint-space start and end;
# orientation interpolation is a bit odd
uint8 RT_ARM_PLAN_PATH_QSTART_TO_QGOAL = 25
uint8 RT_ARM_PLAN_PATH_QSTART_TO_ADES = 24 #specify start and end, j-space start, affine desired end

#uint8 RT_ARM_PLAN_PATH_ASTART_TO_QGOAL = 26 #specified affine start, joint-space goal
uint8 RT_ARM_PLAN_PATH_CURRENT_TO_GOAL_DP_XYZ = 27 #rectilinear translation w/ fixed orientation

# request to preview plan:
uint8 RT_ARM_DISPLAY_TRAJECTORY = 50

#MOVE commands!
uint8 RT_ARM_EXECUTE_PLANNED_PATH = 100

#uint8 RT_ARM_DESCEND_20CM=101
#uint8 RT_ARM_DEPART_20CM=102


#goal:
int32 command_code
geometry_msgs/PoseStamped des_pose_gripper_right
geometry_msgs/PoseStamped des_pose_gripper_left
float64 gripper_opening_right
float64 gripper_opening_left
float64[] arm_dp_right #to command a 3-D vector displacement relative to current pose, fixed orientation
float64[] arm_dp_left
float64[] q_goal_right
float64[] q_goal_left
float64 move_time

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

"""
  # Pseudo-constants
  ARM_TEST_MODE = 0
  ARM_IS_SERVER_BUSY_QUERY = 1
  ARM_QUERY_IS_PATH_VALID = 2
  RT_ARM_GET_Q_DATA = 3
  LEFT_ARM_GET_Q_DATA = 4
  RT_ARM_GET_TOOL_POSE = 5
  LEFT_ARM_GET_TOOL_POSE = 5
  RT_ARM_PLAN_PATH_CURRENT_TO_GOAL_POSE = 20
  RT_ARM_PLAN_PATH_CURRENT_TO_PRE_POSE = 21
  RT_ARM_PLAN_JSPACE_PATH_CURRENT_TO_PRE_POSE = 22
  RT_ARM_PLAN_JSPACE_PATH_CURRENT_TO_QGOAL = 23
  RT_ARM_PLAN_PATH_QSTART_TO_QGOAL = 25
  RT_ARM_PLAN_PATH_QSTART_TO_ADES = 24
  RT_ARM_PLAN_PATH_CURRENT_TO_GOAL_DP_XYZ = 27
  RT_ARM_DISPLAY_TRAJECTORY = 50
  RT_ARM_EXECUTE_PLANNED_PATH = 100

  __slots__ = ['command_code','des_pose_gripper_right','des_pose_gripper_left','gripper_opening_right','gripper_opening_left','arm_dp_right','arm_dp_left','q_goal_right','q_goal_left','move_time']
  _slot_types = ['int32','geometry_msgs/PoseStamped','geometry_msgs/PoseStamped','float64','float64','float64[]','float64[]','float64[]','float64[]','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       command_code,des_pose_gripper_right,des_pose_gripper_left,gripper_opening_right,gripper_opening_left,arm_dp_right,arm_dp_left,q_goal_right,q_goal_left,move_time

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(cwru_baxter_cart_moveGoal, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.command_code is None:
        self.command_code = 0
      if self.des_pose_gripper_right is None:
        self.des_pose_gripper_right = geometry_msgs.msg.PoseStamped()
      if self.des_pose_gripper_left is None:
        self.des_pose_gripper_left = geometry_msgs.msg.PoseStamped()
      if self.gripper_opening_right is None:
        self.gripper_opening_right = 0.
      if self.gripper_opening_left is None:
        self.gripper_opening_left = 0.
      if self.arm_dp_right is None:
        self.arm_dp_right = []
      if self.arm_dp_left is None:
        self.arm_dp_left = []
      if self.q_goal_right is None:
        self.q_goal_right = []
      if self.q_goal_left is None:
        self.q_goal_left = []
      if self.move_time is None:
        self.move_time = 0.
    else:
      self.command_code = 0
      self.des_pose_gripper_right = geometry_msgs.msg.PoseStamped()
      self.des_pose_gripper_left = geometry_msgs.msg.PoseStamped()
      self.gripper_opening_right = 0.
      self.gripper_opening_left = 0.
      self.arm_dp_right = []
      self.arm_dp_left = []
      self.q_goal_right = []
      self.q_goal_left = []
      self.move_time = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_i3I.pack(_x.command_code, _x.des_pose_gripper_right.header.seq, _x.des_pose_gripper_right.header.stamp.secs, _x.des_pose_gripper_right.header.stamp.nsecs))
      _x = self.des_pose_gripper_right.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d3I.pack(_x.des_pose_gripper_right.pose.position.x, _x.des_pose_gripper_right.pose.position.y, _x.des_pose_gripper_right.pose.position.z, _x.des_pose_gripper_right.pose.orientation.x, _x.des_pose_gripper_right.pose.orientation.y, _x.des_pose_gripper_right.pose.orientation.z, _x.des_pose_gripper_right.pose.orientation.w, _x.des_pose_gripper_left.header.seq, _x.des_pose_gripper_left.header.stamp.secs, _x.des_pose_gripper_left.header.stamp.nsecs))
      _x = self.des_pose_gripper_left.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_9d.pack(_x.des_pose_gripper_left.pose.position.x, _x.des_pose_gripper_left.pose.position.y, _x.des_pose_gripper_left.pose.position.z, _x.des_pose_gripper_left.pose.orientation.x, _x.des_pose_gripper_left.pose.orientation.y, _x.des_pose_gripper_left.pose.orientation.z, _x.des_pose_gripper_left.pose.orientation.w, _x.gripper_opening_right, _x.gripper_opening_left))
      length = len(self.arm_dp_right)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.arm_dp_right))
      length = len(self.arm_dp_left)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.arm_dp_left))
      length = len(self.q_goal_right)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.q_goal_right))
      length = len(self.q_goal_left)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.q_goal_left))
      buff.write(_struct_d.pack(self.move_time))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.des_pose_gripper_right is None:
        self.des_pose_gripper_right = geometry_msgs.msg.PoseStamped()
      if self.des_pose_gripper_left is None:
        self.des_pose_gripper_left = geometry_msgs.msg.PoseStamped()
      end = 0
      _x = self
      start = end
      end += 16
      (_x.command_code, _x.des_pose_gripper_right.header.seq, _x.des_pose_gripper_right.header.stamp.secs, _x.des_pose_gripper_right.header.stamp.nsecs,) = _struct_i3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.des_pose_gripper_right.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.des_pose_gripper_right.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.des_pose_gripper_right.pose.position.x, _x.des_pose_gripper_right.pose.position.y, _x.des_pose_gripper_right.pose.position.z, _x.des_pose_gripper_right.pose.orientation.x, _x.des_pose_gripper_right.pose.orientation.y, _x.des_pose_gripper_right.pose.orientation.z, _x.des_pose_gripper_right.pose.orientation.w, _x.des_pose_gripper_left.header.seq, _x.des_pose_gripper_left.header.stamp.secs, _x.des_pose_gripper_left.header.stamp.nsecs,) = _struct_7d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.des_pose_gripper_left.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.des_pose_gripper_left.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 72
      (_x.des_pose_gripper_left.pose.position.x, _x.des_pose_gripper_left.pose.position.y, _x.des_pose_gripper_left.pose.position.z, _x.des_pose_gripper_left.pose.orientation.x, _x.des_pose_gripper_left.pose.orientation.y, _x.des_pose_gripper_left.pose.orientation.z, _x.des_pose_gripper_left.pose.orientation.w, _x.gripper_opening_right, _x.gripper_opening_left,) = _struct_9d.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.arm_dp_right = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.arm_dp_left = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.q_goal_right = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.q_goal_left = struct.unpack(pattern, str[start:end])
      start = end
      end += 8
      (self.move_time,) = _struct_d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_i3I.pack(_x.command_code, _x.des_pose_gripper_right.header.seq, _x.des_pose_gripper_right.header.stamp.secs, _x.des_pose_gripper_right.header.stamp.nsecs))
      _x = self.des_pose_gripper_right.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d3I.pack(_x.des_pose_gripper_right.pose.position.x, _x.des_pose_gripper_right.pose.position.y, _x.des_pose_gripper_right.pose.position.z, _x.des_pose_gripper_right.pose.orientation.x, _x.des_pose_gripper_right.pose.orientation.y, _x.des_pose_gripper_right.pose.orientation.z, _x.des_pose_gripper_right.pose.orientation.w, _x.des_pose_gripper_left.header.seq, _x.des_pose_gripper_left.header.stamp.secs, _x.des_pose_gripper_left.header.stamp.nsecs))
      _x = self.des_pose_gripper_left.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_9d.pack(_x.des_pose_gripper_left.pose.position.x, _x.des_pose_gripper_left.pose.position.y, _x.des_pose_gripper_left.pose.position.z, _x.des_pose_gripper_left.pose.orientation.x, _x.des_pose_gripper_left.pose.orientation.y, _x.des_pose_gripper_left.pose.orientation.z, _x.des_pose_gripper_left.pose.orientation.w, _x.gripper_opening_right, _x.gripper_opening_left))
      length = len(self.arm_dp_right)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.arm_dp_right.tostring())
      length = len(self.arm_dp_left)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.arm_dp_left.tostring())
      length = len(self.q_goal_right)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.q_goal_right.tostring())
      length = len(self.q_goal_left)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.q_goal_left.tostring())
      buff.write(_struct_d.pack(self.move_time))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.des_pose_gripper_right is None:
        self.des_pose_gripper_right = geometry_msgs.msg.PoseStamped()
      if self.des_pose_gripper_left is None:
        self.des_pose_gripper_left = geometry_msgs.msg.PoseStamped()
      end = 0
      _x = self
      start = end
      end += 16
      (_x.command_code, _x.des_pose_gripper_right.header.seq, _x.des_pose_gripper_right.header.stamp.secs, _x.des_pose_gripper_right.header.stamp.nsecs,) = _struct_i3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.des_pose_gripper_right.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.des_pose_gripper_right.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.des_pose_gripper_right.pose.position.x, _x.des_pose_gripper_right.pose.position.y, _x.des_pose_gripper_right.pose.position.z, _x.des_pose_gripper_right.pose.orientation.x, _x.des_pose_gripper_right.pose.orientation.y, _x.des_pose_gripper_right.pose.orientation.z, _x.des_pose_gripper_right.pose.orientation.w, _x.des_pose_gripper_left.header.seq, _x.des_pose_gripper_left.header.stamp.secs, _x.des_pose_gripper_left.header.stamp.nsecs,) = _struct_7d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.des_pose_gripper_left.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.des_pose_gripper_left.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 72
      (_x.des_pose_gripper_left.pose.position.x, _x.des_pose_gripper_left.pose.position.y, _x.des_pose_gripper_left.pose.position.z, _x.des_pose_gripper_left.pose.orientation.x, _x.des_pose_gripper_left.pose.orientation.y, _x.des_pose_gripper_left.pose.orientation.z, _x.des_pose_gripper_left.pose.orientation.w, _x.gripper_opening_right, _x.gripper_opening_left,) = _struct_9d.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.arm_dp_right = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.arm_dp_left = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.q_goal_right = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.q_goal_left = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 8
      (self.move_time,) = _struct_d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_d = struct.Struct("<d")
_struct_i3I = struct.Struct("<i3I")
_struct_7d3I = struct.Struct("<7d3I")
_struct_9d = struct.Struct("<9d")
