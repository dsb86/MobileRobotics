;; Auto-generated. Do not edit!


(when (boundp 'cwru_msgs::DesiredState)
  (if (not (find-package "CWRU_MSGS"))
    (make-package "CWRU_MSGS"))
  (shadow 'DesiredState (find-package "CWRU_MSGS")))
(unless (find-package "CWRU_MSGS::DESIREDSTATE")
  (make-package "CWRU_MSGS::DESIREDSTATE"))

(in-package "ROS")
;;//! \htmlinclude DesiredState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cwru_msgs::DesiredState
  :super ros::object
  :slots (_header _seg_type _seg_number _des_pose _des_speed _des_rho _des_lseg ))

(defmethod cwru_msgs::DesiredState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:seg_type __seg_type) 0)
    ((:seg_number __seg_number) 0)
    ((:des_pose __des_pose) (instance geometry_msgs::Pose :init))
    ((:des_speed __des_speed) 0.0)
    ((:des_rho __des_rho) 0.0)
    ((:des_lseg __des_lseg) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _seg_type (round __seg_type))
   (setq _seg_number (round __seg_number))
   (setq _des_pose __des_pose)
   (setq _des_speed (float __des_speed))
   (setq _des_rho (float __des_rho))
   (setq _des_lseg (float __des_lseg))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:seg_type
   (&optional __seg_type)
   (if __seg_type (setq _seg_type __seg_type)) _seg_type)
  (:seg_number
   (&optional __seg_number)
   (if __seg_number (setq _seg_number __seg_number)) _seg_number)
  (:des_pose
   (&rest __des_pose)
   (if (keywordp (car __des_pose))
       (send* _des_pose __des_pose)
     (progn
       (if __des_pose (setq _des_pose (car __des_pose)))
       _des_pose)))
  (:des_speed
   (&optional __des_speed)
   (if __des_speed (setq _des_speed __des_speed)) _des_speed)
  (:des_rho
   (&optional __des_rho)
   (if __des_rho (setq _des_rho __des_rho)) _des_rho)
  (:des_lseg
   (&optional __des_lseg)
   (if __des_lseg (setq _des_lseg __des_lseg)) _des_lseg)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _seg_type
    1
    ;; uint32 _seg_number
    4
    ;; geometry_msgs/Pose _des_pose
    (send _des_pose :serialization-length)
    ;; float64 _des_speed
    8
    ;; float64 _des_rho
    8
    ;; float64 _des_lseg
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _seg_type
       (write-byte _seg_type s)
     ;; uint32 _seg_number
       (write-long _seg_number s)
     ;; geometry_msgs/Pose _des_pose
       (send _des_pose :serialize s)
     ;; float64 _des_speed
       (sys::poke _des_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_rho
       (sys::poke _des_rho (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _des_lseg
       (sys::poke _des_lseg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _seg_type
     (setq _seg_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _seg_type 127) (setq _seg_type (- _seg_type 256)))
   ;; uint32 _seg_number
     (setq _seg_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _des_pose
     (send _des_pose :deserialize buf ptr-) (incf ptr- (send _des_pose :serialization-length))
   ;; float64 _des_speed
     (setq _des_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_rho
     (setq _des_rho (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _des_lseg
     (setq _des_lseg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get cwru_msgs::DesiredState :md5sum-) "8a022665b62e846aae599403b4b5aab1")
(setf (get cwru_msgs::DesiredState :datatype-) "cwru_msgs/DesiredState")
(setf (get cwru_msgs::DesiredState :definition-)
      "#Standard ROS header for timestamp and frame_id
Header header

#Segment type
int8 seg_type

#Segment number
uint32 seg_number

#6DOF pose
geometry_msgs/Pose des_pose

#Desired speed
float64 des_speed

#Desired curvature
float64 des_rho

#Desired distance along the segment
float64 des_lseg

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

")



(provide :cwru_msgs/DesiredState "8a022665b62e846aae599403b4b5aab1")


