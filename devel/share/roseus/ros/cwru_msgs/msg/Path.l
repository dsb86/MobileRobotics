;; Auto-generated. Do not edit!


(when (boundp 'cwru_msgs::Path)
  (if (not (find-package "CWRU_MSGS"))
    (make-package "CWRU_MSGS"))
  (shadow 'Path (find-package "CWRU_MSGS")))
(unless (find-package "CWRU_MSGS::PATH")
  (make-package "CWRU_MSGS::PATH"))

(in-package "ROS")
;;//! \htmlinclude Path.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cwru_msgs::Path
  :super ros::object
  :slots (_header _segs ))

(defmethod cwru_msgs::Path
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:segs __segs) (let (r) (dotimes (i 0) (push (instance cwru_msgs::PathSegment :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _segs __segs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:segs
   (&rest __segs)
   (if (keywordp (car __segs))
       (send* _segs __segs)
     (progn
       (if __segs (setq _segs (car __segs)))
       _segs)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cwru_msgs/PathSegment[] _segs
    (apply #'+ (send-all _segs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cwru_msgs/PathSegment[] _segs
     (write-long (length _segs) s)
     (dolist (elem _segs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cwru_msgs/PathSegment[] _segs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _segs (let (r) (dotimes (i n) (push (instance cwru_msgs::PathSegment :init) r)) r))
     (dolist (elem- _segs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cwru_msgs::Path :md5sum-) "61997cac25b65fbf8f9034286f94085e")
(setf (get cwru_msgs::Path :datatype-) "cwru_msgs/Path")
(setf (get cwru_msgs::Path :definition-)
      "#Standard header.
Header header

#List of path segments that should be executed
cwru_msgs/PathSegment[] segs

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
MSG: cwru_msgs/PathSegment
#Reference frame that the following coordinates should be interpreted relative to and timestamp to use when transforming
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



(provide :cwru_msgs/Path "61997cac25b65fbf8f9034286f94085e")


