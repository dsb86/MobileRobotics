;; Auto-generated. Do not edit!


(when (boundp 'cwru_srv::arm_nav_service_message)
  (if (not (find-package "CWRU_SRV"))
    (make-package "CWRU_SRV"))
  (shadow 'arm_nav_service_message (find-package "CWRU_SRV")))
(unless (find-package "CWRU_SRV::ARM_NAV_SERVICE_MESSAGE")
  (make-package "CWRU_SRV::ARM_NAV_SERVICE_MESSAGE"))
(unless (find-package "CWRU_SRV::ARM_NAV_SERVICE_MESSAGEREQUEST")
  (make-package "CWRU_SRV::ARM_NAV_SERVICE_MESSAGEREQUEST"))
(unless (find-package "CWRU_SRV::ARM_NAV_SERVICE_MESSAGERESPONSE")
  (make-package "CWRU_SRV::ARM_NAV_SERVICE_MESSAGERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass cwru_srv::arm_nav_service_messageRequest
  :super ros::object
  :slots (_cmd_mode _q_vec_start _q_vec_end _poseStamped_start _poseStamped_goal _plan_id _delta_p ))

(defmethod cwru_srv::arm_nav_service_messageRequest
  (:init
   (&key
    ((:cmd_mode __cmd_mode) 0)
    ((:q_vec_start __q_vec_start) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:q_vec_end __q_vec_end) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:poseStamped_start __poseStamped_start) (instance geometry_msgs::PoseStamped :init))
    ((:poseStamped_goal __poseStamped_goal) (instance geometry_msgs::PoseStamped :init))
    ((:plan_id __plan_id) 0)
    ((:delta_p __delta_p) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _cmd_mode (round __cmd_mode))
   (setq _q_vec_start __q_vec_start)
   (setq _q_vec_end __q_vec_end)
   (setq _poseStamped_start __poseStamped_start)
   (setq _poseStamped_goal __poseStamped_goal)
   (setq _plan_id (round __plan_id))
   (setq _delta_p __delta_p)
   self)
  (:cmd_mode
   (&optional __cmd_mode)
   (if __cmd_mode (setq _cmd_mode __cmd_mode)) _cmd_mode)
  (:q_vec_start
   (&optional __q_vec_start)
   (if __q_vec_start (setq _q_vec_start __q_vec_start)) _q_vec_start)
  (:q_vec_end
   (&optional __q_vec_end)
   (if __q_vec_end (setq _q_vec_end __q_vec_end)) _q_vec_end)
  (:poseStamped_start
   (&rest __poseStamped_start)
   (if (keywordp (car __poseStamped_start))
       (send* _poseStamped_start __poseStamped_start)
     (progn
       (if __poseStamped_start (setq _poseStamped_start (car __poseStamped_start)))
       _poseStamped_start)))
  (:poseStamped_goal
   (&rest __poseStamped_goal)
   (if (keywordp (car __poseStamped_goal))
       (send* _poseStamped_goal __poseStamped_goal)
     (progn
       (if __poseStamped_goal (setq _poseStamped_goal (car __poseStamped_goal)))
       _poseStamped_goal)))
  (:plan_id
   (&optional __plan_id)
   (if __plan_id (setq _plan_id __plan_id)) _plan_id)
  (:delta_p
   (&optional __delta_p)
   (if __delta_p (setq _delta_p __delta_p)) _delta_p)
  (:serialization-length
   ()
   (+
    ;; int32 _cmd_mode
    4
    ;; float32[] _q_vec_start
    (* 4    (length _q_vec_start)) 4
    ;; float32[] _q_vec_end
    (* 4    (length _q_vec_end)) 4
    ;; geometry_msgs/PoseStamped _poseStamped_start
    (send _poseStamped_start :serialization-length)
    ;; geometry_msgs/PoseStamped _poseStamped_goal
    (send _poseStamped_goal :serialization-length)
    ;; int32 _plan_id
    4
    ;; float32[] _delta_p
    (* 4    (length _delta_p)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cmd_mode
       (write-long _cmd_mode s)
     ;; float32[] _q_vec_start
     (write-long (length _q_vec_start) s)
     (dotimes (i (length _q_vec_start))
       (sys::poke (elt _q_vec_start i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _q_vec_end
     (write-long (length _q_vec_end) s)
     (dotimes (i (length _q_vec_end))
       (sys::poke (elt _q_vec_end i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; geometry_msgs/PoseStamped _poseStamped_start
       (send _poseStamped_start :serialize s)
     ;; geometry_msgs/PoseStamped _poseStamped_goal
       (send _poseStamped_goal :serialize s)
     ;; int32 _plan_id
       (write-long _plan_id s)
     ;; float32[] _delta_p
     (write-long (length _delta_p) s)
     (dotimes (i (length _delta_p))
       (sys::poke (elt _delta_p i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cmd_mode
     (setq _cmd_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _q_vec_start
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _q_vec_start (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _q_vec_start i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _q_vec_end
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _q_vec_end (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _q_vec_end i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; geometry_msgs/PoseStamped _poseStamped_start
     (send _poseStamped_start :deserialize buf ptr-) (incf ptr- (send _poseStamped_start :serialization-length))
   ;; geometry_msgs/PoseStamped _poseStamped_goal
     (send _poseStamped_goal :deserialize buf ptr-) (incf ptr- (send _poseStamped_goal :serialization-length))
   ;; int32 _plan_id
     (setq _plan_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _delta_p
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _delta_p (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _delta_p i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass cwru_srv::arm_nav_service_messageResponse
  :super ros::object
  :slots (_bool_resp _rtn_code _plan_id _q_vec_start _q_vec_end ))

(defmethod cwru_srv::arm_nav_service_messageResponse
  (:init
   (&key
    ((:bool_resp __bool_resp) nil)
    ((:rtn_code __rtn_code) 0)
    ((:plan_id __plan_id) 0)
    ((:q_vec_start __q_vec_start) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:q_vec_end __q_vec_end) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _bool_resp __bool_resp)
   (setq _rtn_code (round __rtn_code))
   (setq _plan_id (round __plan_id))
   (setq _q_vec_start __q_vec_start)
   (setq _q_vec_end __q_vec_end)
   self)
  (:bool_resp
   (&optional __bool_resp)
   (if __bool_resp (setq _bool_resp __bool_resp)) _bool_resp)
  (:rtn_code
   (&optional __rtn_code)
   (if __rtn_code (setq _rtn_code __rtn_code)) _rtn_code)
  (:plan_id
   (&optional __plan_id)
   (if __plan_id (setq _plan_id __plan_id)) _plan_id)
  (:q_vec_start
   (&optional __q_vec_start)
   (if __q_vec_start (setq _q_vec_start __q_vec_start)) _q_vec_start)
  (:q_vec_end
   (&optional __q_vec_end)
   (if __q_vec_end (setq _q_vec_end __q_vec_end)) _q_vec_end)
  (:serialization-length
   ()
   (+
    ;; bool _bool_resp
    1
    ;; int32 _rtn_code
    4
    ;; int32 _plan_id
    4
    ;; float32[] _q_vec_start
    (* 4    (length _q_vec_start)) 4
    ;; float32[] _q_vec_end
    (* 4    (length _q_vec_end)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _bool_resp
       (if _bool_resp (write-byte -1 s) (write-byte 0 s))
     ;; int32 _rtn_code
       (write-long _rtn_code s)
     ;; int32 _plan_id
       (write-long _plan_id s)
     ;; float32[] _q_vec_start
     (write-long (length _q_vec_start) s)
     (dotimes (i (length _q_vec_start))
       (sys::poke (elt _q_vec_start i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _q_vec_end
     (write-long (length _q_vec_end) s)
     (dotimes (i (length _q_vec_end))
       (sys::poke (elt _q_vec_end i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _bool_resp
     (setq _bool_resp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _rtn_code
     (setq _rtn_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _plan_id
     (setq _plan_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _q_vec_start
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _q_vec_start (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _q_vec_start i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _q_vec_end
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _q_vec_end (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _q_vec_end i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass cwru_srv::arm_nav_service_message
  :super ros::object
  :slots ())

(setf (get cwru_srv::arm_nav_service_message :md5sum-) "3416a565a18c200ab6e309f562189f67")
(setf (get cwru_srv::arm_nav_service_message :datatype-) "cwru_srv/arm_nav_service_message")
(setf (get cwru_srv::arm_nav_service_message :request) cwru_srv::arm_nav_service_messageRequest)
(setf (get cwru_srv::arm_nav_service_message :response) cwru_srv::arm_nav_service_messageResponse)

(defmethod cwru_srv::arm_nav_service_messageRequest
  (:response () (instance cwru_srv::arm_nav_service_messageResponse :init)))

(setf (get cwru_srv::arm_nav_service_messageRequest :md5sum-) "3416a565a18c200ab6e309f562189f67")
(setf (get cwru_srv::arm_nav_service_messageRequest :datatype-) "cwru_srv/arm_nav_service_messageRequest")
(setf (get cwru_srv::arm_nav_service_messageRequest :definition-)
      "
int32 cmd_mode


float32[] q_vec_start
float32[] q_vec_end



geometry_msgs/PoseStamped poseStamped_start
geometry_msgs/PoseStamped poseStamped_goal



int32 plan_id


float32[] delta_p


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

bool bool_resp


int32 rtn_code



int32 plan_id


float32[] q_vec_start
float32[] q_vec_end

")

(setf (get cwru_srv::arm_nav_service_messageResponse :md5sum-) "3416a565a18c200ab6e309f562189f67")
(setf (get cwru_srv::arm_nav_service_messageResponse :datatype-) "cwru_srv/arm_nav_service_messageResponse")
(setf (get cwru_srv::arm_nav_service_messageResponse :definition-)
      "
int32 cmd_mode


float32[] q_vec_start
float32[] q_vec_end



geometry_msgs/PoseStamped poseStamped_start
geometry_msgs/PoseStamped poseStamped_goal



int32 plan_id


float32[] delta_p


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

bool bool_resp


int32 rtn_code



int32 plan_id


float32[] q_vec_start
float32[] q_vec_end

")



(provide :cwru_srv/arm_nav_service_message "3416a565a18c200ab6e309f562189f67")


