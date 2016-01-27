;; Auto-generated. Do not edit!


(when (boundp 'cwru_msgs::PathSegment)
  (if (not (find-package "CWRU_MSGS"))
    (make-package "CWRU_MSGS"))
  (shadow 'PathSegment (find-package "CWRU_MSGS")))
(unless (find-package "CWRU_MSGS::PATHSEGMENT")
  (make-package "CWRU_MSGS::PATHSEGMENT"))

(in-package "ROS")
;;//! \htmlinclude PathSegment.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*LINE*" (find-package "CWRU_MSGS::PATHSEGMENT"))
(shadow '*LINE* (find-package "CWRU_MSGS::PATHSEGMENT"))
(defconstant cwru_msgs::PathSegment::*LINE* 1)
(intern "*ARC*" (find-package "CWRU_MSGS::PATHSEGMENT"))
(shadow '*ARC* (find-package "CWRU_MSGS::PATHSEGMENT"))
(defconstant cwru_msgs::PathSegment::*ARC* 2)
(intern "*SPIN_IN_PLACE*" (find-package "CWRU_MSGS::PATHSEGMENT"))
(shadow '*SPIN_IN_PLACE* (find-package "CWRU_MSGS::PATHSEGMENT"))
(defconstant cwru_msgs::PathSegment::*SPIN_IN_PLACE* 3)
(defclass cwru_msgs::PathSegment
  :super ros::object
  :slots (_header _seg_type _seg_number _seg_length _ref_point _init_tan_angle _curvature _max_speeds _min_speeds _accel_limit _decel_limit ))

(defmethod cwru_msgs::PathSegment
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:seg_type __seg_type) 0)
    ((:seg_number __seg_number) 0)
    ((:seg_length __seg_length) 0.0)
    ((:ref_point __ref_point) (instance geometry_msgs::Point :init))
    ((:init_tan_angle __init_tan_angle) (instance geometry_msgs::Quaternion :init))
    ((:curvature __curvature) 0.0)
    ((:max_speeds __max_speeds) (instance geometry_msgs::Twist :init))
    ((:min_speeds __min_speeds) (instance geometry_msgs::Twist :init))
    ((:accel_limit __accel_limit) 0.0)
    ((:decel_limit __decel_limit) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _seg_type (round __seg_type))
   (setq _seg_number (round __seg_number))
   (setq _seg_length (float __seg_length))
   (setq _ref_point __ref_point)
   (setq _init_tan_angle __init_tan_angle)
   (setq _curvature (float __curvature))
   (setq _max_speeds __max_speeds)
   (setq _min_speeds __min_speeds)
   (setq _accel_limit (float __accel_limit))
   (setq _decel_limit (float __decel_limit))
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
  (:seg_length
   (&optional __seg_length)
   (if __seg_length (setq _seg_length __seg_length)) _seg_length)
  (:ref_point
   (&rest __ref_point)
   (if (keywordp (car __ref_point))
       (send* _ref_point __ref_point)
     (progn
       (if __ref_point (setq _ref_point (car __ref_point)))
       _ref_point)))
  (:init_tan_angle
   (&rest __init_tan_angle)
   (if (keywordp (car __init_tan_angle))
       (send* _init_tan_angle __init_tan_angle)
     (progn
       (if __init_tan_angle (setq _init_tan_angle (car __init_tan_angle)))
       _init_tan_angle)))
  (:curvature
   (&optional __curvature)
   (if __curvature (setq _curvature __curvature)) _curvature)
  (:max_speeds
   (&rest __max_speeds)
   (if (keywordp (car __max_speeds))
       (send* _max_speeds __max_speeds)
     (progn
       (if __max_speeds (setq _max_speeds (car __max_speeds)))
       _max_speeds)))
  (:min_speeds
   (&rest __min_speeds)
   (if (keywordp (car __min_speeds))
       (send* _min_speeds __min_speeds)
     (progn
       (if __min_speeds (setq _min_speeds (car __min_speeds)))
       _min_speeds)))
  (:accel_limit
   (&optional __accel_limit)
   (if __accel_limit (setq _accel_limit __accel_limit)) _accel_limit)
  (:decel_limit
   (&optional __decel_limit)
   (if __decel_limit (setq _decel_limit __decel_limit)) _decel_limit)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _seg_type
    1
    ;; uint32 _seg_number
    4
    ;; float64 _seg_length
    8
    ;; geometry_msgs/Point _ref_point
    (send _ref_point :serialization-length)
    ;; geometry_msgs/Quaternion _init_tan_angle
    (send _init_tan_angle :serialization-length)
    ;; float64 _curvature
    8
    ;; geometry_msgs/Twist _max_speeds
    (send _max_speeds :serialization-length)
    ;; geometry_msgs/Twist _min_speeds
    (send _min_speeds :serialization-length)
    ;; float64 _accel_limit
    8
    ;; float64 _decel_limit
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
     ;; float64 _seg_length
       (sys::poke _seg_length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _ref_point
       (send _ref_point :serialize s)
     ;; geometry_msgs/Quaternion _init_tan_angle
       (send _init_tan_angle :serialize s)
     ;; float64 _curvature
       (sys::poke _curvature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Twist _max_speeds
       (send _max_speeds :serialize s)
     ;; geometry_msgs/Twist _min_speeds
       (send _min_speeds :serialize s)
     ;; float64 _accel_limit
       (sys::poke _accel_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _decel_limit
       (sys::poke _decel_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _seg_length
     (setq _seg_length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _ref_point
     (send _ref_point :deserialize buf ptr-) (incf ptr- (send _ref_point :serialization-length))
   ;; geometry_msgs/Quaternion _init_tan_angle
     (send _init_tan_angle :deserialize buf ptr-) (incf ptr- (send _init_tan_angle :serialization-length))
   ;; float64 _curvature
     (setq _curvature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Twist _max_speeds
     (send _max_speeds :deserialize buf ptr-) (incf ptr- (send _max_speeds :serialization-length))
   ;; geometry_msgs/Twist _min_speeds
     (send _min_speeds :deserialize buf ptr-) (incf ptr- (send _min_speeds :serialization-length))
   ;; float64 _accel_limit
     (setq _accel_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _decel_limit
     (setq _decel_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get cwru_msgs::PathSegment :md5sum-) "5c807f5cea06f40555a1d9f2a31b3c69")
(setf (get cwru_msgs::PathSegment :datatype-) "cwru_msgs/PathSegment")
(setf (get cwru_msgs::PathSegment :definition-)
      "#Reference frame that the following coordinates should be interpreted relative to and timestamp to use when transforming
Header header

#Segment type enums
int8 LINE = 1
int8 ARC = 2
int8 SPIN_IN_PLACE = 3

#Segment type
int8 seg_type

#Segment number
uint32 seg_number

#Segment length
float64 seg_length

#Reference point
geometry_msgs/Point ref_point

#Initial tangent angle
geometry_msgs/Quaternion init_tan_angle

#Curvature
float64 curvature

#Speed limits for this segment
geometry_msgs/Twist max_speeds
geometry_msgs/Twist min_speeds

#Acceleration limit for this segment (m/s^2 for lines/arcs, rads/s^2 for spin-in-place)
float64 accel_limit

#Deceleration limit for this segment
float64 decel_limit

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

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 

float64 x
float64 y
float64 z
")



(provide :cwru_msgs/PathSegment "5c807f5cea06f40555a1d9f2a31b3c69")


