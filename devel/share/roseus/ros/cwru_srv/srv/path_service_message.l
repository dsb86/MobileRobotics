;; Auto-generated. Do not edit!


(when (boundp 'cwru_srv::path_service_message)
  (if (not (find-package "CWRU_SRV"))
    (make-package "CWRU_SRV"))
  (shadow 'path_service_message (find-package "CWRU_SRV")))
(unless (find-package "CWRU_SRV::PATH_SERVICE_MESSAGE")
  (make-package "CWRU_SRV::PATH_SERVICE_MESSAGE"))
(unless (find-package "CWRU_SRV::PATH_SERVICE_MESSAGEREQUEST")
  (make-package "CWRU_SRV::PATH_SERVICE_MESSAGEREQUEST"))
(unless (find-package "CWRU_SRV::PATH_SERVICE_MESSAGERESPONSE")
  (make-package "CWRU_SRV::PATH_SERVICE_MESSAGERESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))




(defclass cwru_srv::path_service_messageRequest
  :super ros::object
  :slots (_path ))

(defmethod cwru_srv::path_service_messageRequest
  (:init
   (&key
    ((:path __path) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _path __path)
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;;
   self)
  )

(defclass cwru_srv::path_service_messageResponse
  :super ros::object
  :slots (_resp ))

(defmethod cwru_srv::path_service_messageResponse
  (:init
   (&key
    ((:resp __resp) nil)
    )
   (send-super :init)
   (setq _resp __resp)
   self)
  (:resp
   (&optional __resp)
   (if __resp (setq _resp __resp)) _resp)
  (:serialization-length
   ()
   (+
    ;; bool _resp
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _resp
       (if _resp (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _resp
     (setq _resp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cwru_srv::path_service_message
  :super ros::object
  :slots ())

(setf (get cwru_srv::path_service_message :md5sum-) "8fb4d04b2272c50e65219c252c619030")
(setf (get cwru_srv::path_service_message :datatype-) "cwru_srv/path_service_message")
(setf (get cwru_srv::path_service_message :request) cwru_srv::path_service_messageRequest)
(setf (get cwru_srv::path_service_message :response) cwru_srv::path_service_messageResponse)

(defmethod cwru_srv::path_service_messageRequest
  (:response () (instance cwru_srv::path_service_messageResponse :init)))

(setf (get cwru_srv::path_service_messageRequest :md5sum-) "8fb4d04b2272c50e65219c252c619030")
(setf (get cwru_srv::path_service_messageRequest :datatype-) "cwru_srv/path_service_messageRequest")
(setf (get cwru_srv::path_service_messageRequest :definition-)
      "nav_msgs/Path path

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
---
bool resp

")

(setf (get cwru_srv::path_service_messageResponse :md5sum-) "8fb4d04b2272c50e65219c252c619030")
(setf (get cwru_srv::path_service_messageResponse :datatype-) "cwru_srv/path_service_messageResponse")
(setf (get cwru_srv::path_service_messageResponse :definition-)
      "nav_msgs/Path path

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
---
bool resp

")



(provide :cwru_srv/path_service_message "8fb4d04b2272c50e65219c252c619030")


