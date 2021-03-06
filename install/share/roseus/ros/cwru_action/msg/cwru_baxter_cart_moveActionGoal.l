;; Auto-generated. Do not edit!


(when (boundp 'cwru_action::cwru_baxter_cart_moveActionGoal)
  (if (not (find-package "CWRU_ACTION"))
    (make-package "CWRU_ACTION"))
  (shadow 'cwru_baxter_cart_moveActionGoal (find-package "CWRU_ACTION")))
(unless (find-package "CWRU_ACTION::CWRU_BAXTER_CART_MOVEACTIONGOAL")
  (make-package "CWRU_ACTION::CWRU_BAXTER_CART_MOVEACTIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude cwru_baxter_cart_moveActionGoal.msg.html
(if (not (find-package "ACTIONLIB_MSGS"))
  (ros::roseus-add-msgs "actionlib_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cwru_action::cwru_baxter_cart_moveActionGoal
  :super ros::object
  :slots (_header _goal_id _goal ))

(defmethod cwru_action::cwru_baxter_cart_moveActionGoal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:goal_id __goal_id) (instance actionlib_msgs::GoalID :init))
    ((:goal __goal) (instance cwru_action::cwru_baxter_cart_moveGoal :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _goal_id __goal_id)
   (setq _goal __goal)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:goal_id
   (&rest __goal_id)
   (if (keywordp (car __goal_id))
       (send* _goal_id __goal_id)
     (progn
       (if __goal_id (setq _goal_id (car __goal_id)))
       _goal_id)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; actionlib_msgs/GoalID _goal_id
    (send _goal_id :serialization-length)
    ;; cwru_action/cwru_baxter_cart_moveGoal _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; actionlib_msgs/GoalID _goal_id
       (send _goal_id :serialize s)
     ;; cwru_action/cwru_baxter_cart_moveGoal _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; actionlib_msgs/GoalID _goal_id
     (send _goal_id :deserialize buf ptr-) (incf ptr- (send _goal_id :serialization-length))
   ;; cwru_action/cwru_baxter_cart_moveGoal _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(setf (get cwru_action::cwru_baxter_cart_moveActionGoal :md5sum-) "0dd8083c14e4b775a204ee3c6bf9d4ed")
(setf (get cwru_action::cwru_baxter_cart_moveActionGoal :datatype-) "cwru_action/cwru_baxter_cart_moveActionGoal")
(setf (get cwru_action::cwru_baxter_cart_moveActionGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
cwru_baxter_cart_moveGoal goal

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
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: cwru_action/cwru_baxter_cart_moveGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
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

")



(provide :cwru_action/cwru_baxter_cart_moveActionGoal "0dd8083c14e4b775a204ee3c6bf9d4ed")


