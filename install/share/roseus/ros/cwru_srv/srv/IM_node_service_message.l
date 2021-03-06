;; Auto-generated. Do not edit!


(when (boundp 'cwru_srv::IM_node_service_message)
  (if (not (find-package "CWRU_SRV"))
    (make-package "CWRU_SRV"))
  (shadow 'IM_node_service_message (find-package "CWRU_SRV")))
(unless (find-package "CWRU_SRV::IM_NODE_SERVICE_MESSAGE")
  (make-package "CWRU_SRV::IM_NODE_SERVICE_MESSAGE"))
(unless (find-package "CWRU_SRV::IM_NODE_SERVICE_MESSAGEREQUEST")
  (make-package "CWRU_SRV::IM_NODE_SERVICE_MESSAGEREQUEST"))
(unless (find-package "CWRU_SRV::IM_NODE_SERVICE_MESSAGERESPONSE")
  (make-package "CWRU_SRV::IM_NODE_SERVICE_MESSAGERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cwru_srv::IM_node_service_messageRequest
  :super ros::object
  :slots (_cmd_mode _poseStamped_IM_desired ))

(defmethod cwru_srv::IM_node_service_messageRequest
  (:init
   (&key
    ((:cmd_mode __cmd_mode) 0)
    ((:poseStamped_IM_desired __poseStamped_IM_desired) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _cmd_mode (round __cmd_mode))
   (setq _poseStamped_IM_desired __poseStamped_IM_desired)
   self)
  (:cmd_mode
   (&optional __cmd_mode)
   (if __cmd_mode (setq _cmd_mode __cmd_mode)) _cmd_mode)
  (:poseStamped_IM_desired
   (&rest __poseStamped_IM_desired)
   (if (keywordp (car __poseStamped_IM_desired))
       (send* _poseStamped_IM_desired __poseStamped_IM_desired)
     (progn
       (if __poseStamped_IM_desired (setq _poseStamped_IM_desired (car __poseStamped_IM_desired)))
       _poseStamped_IM_desired)))
  (:serialization-length
   ()
   (+
    ;; int32 _cmd_mode
    4
    ;; geometry_msgs/PoseStamped _poseStamped_IM_desired
    (send _poseStamped_IM_desired :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cmd_mode
       (write-long _cmd_mode s)
     ;; geometry_msgs/PoseStamped _poseStamped_IM_desired
       (send _poseStamped_IM_desired :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cmd_mode
     (setq _cmd_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PoseStamped _poseStamped_IM_desired
     (send _poseStamped_IM_desired :deserialize buf ptr-) (incf ptr- (send _poseStamped_IM_desired :serialization-length))
   ;;
   self)
  )

(defclass cwru_srv::IM_node_service_messageResponse
  :super ros::object
  :slots (_poseStamped_IM_current ))

(defmethod cwru_srv::IM_node_service_messageResponse
  (:init
   (&key
    ((:poseStamped_IM_current __poseStamped_IM_current) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _poseStamped_IM_current __poseStamped_IM_current)
   self)
  (:poseStamped_IM_current
   (&rest __poseStamped_IM_current)
   (if (keywordp (car __poseStamped_IM_current))
       (send* _poseStamped_IM_current __poseStamped_IM_current)
     (progn
       (if __poseStamped_IM_current (setq _poseStamped_IM_current (car __poseStamped_IM_current)))
       _poseStamped_IM_current)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _poseStamped_IM_current
    (send _poseStamped_IM_current :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _poseStamped_IM_current
       (send _poseStamped_IM_current :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _poseStamped_IM_current
     (send _poseStamped_IM_current :deserialize buf ptr-) (incf ptr- (send _poseStamped_IM_current :serialization-length))
   ;;
   self)
  )

(defclass cwru_srv::IM_node_service_message
  :super ros::object
  :slots ())

(setf (get cwru_srv::IM_node_service_message :md5sum-) "64798921d798e32da065649fee6f759f")
(setf (get cwru_srv::IM_node_service_message :datatype-) "cwru_srv/IM_node_service_message")
(setf (get cwru_srv::IM_node_service_message :request) cwru_srv::IM_node_service_messageRequest)
(setf (get cwru_srv::IM_node_service_message :response) cwru_srv::IM_node_service_messageResponse)

(defmethod cwru_srv::IM_node_service_messageRequest
  (:response () (instance cwru_srv::IM_node_service_messageResponse :init)))

(setf (get cwru_srv::IM_node_service_messageRequest :md5sum-) "64798921d798e32da065649fee6f759f")
(setf (get cwru_srv::IM_node_service_messageRequest :datatype-) "cwru_srv/IM_node_service_messageRequest")
(setf (get cwru_srv::IM_node_service_messageRequest :definition-)
      "
int32 cmd_mode



geometry_msgs/PoseStamped poseStamped_IM_desired


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
---

geometry_msgs/PoseStamped poseStamped_IM_current


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
")

(setf (get cwru_srv::IM_node_service_messageResponse :md5sum-) "64798921d798e32da065649fee6f759f")
(setf (get cwru_srv::IM_node_service_messageResponse :datatype-) "cwru_srv/IM_node_service_messageResponse")
(setf (get cwru_srv::IM_node_service_messageResponse :definition-)
      "
int32 cmd_mode



geometry_msgs/PoseStamped poseStamped_IM_desired


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
---

geometry_msgs/PoseStamped poseStamped_IM_current


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
")



(provide :cwru_srv/IM_node_service_message "64798921d798e32da065649fee6f759f")


