;; Auto-generated. Do not edit!


(when (boundp 'cwru_msgs::cRIOSensors)
  (if (not (find-package "CWRU_MSGS"))
    (make-package "CWRU_MSGS"))
  (shadow 'cRIOSensors (find-package "CWRU_MSGS")))
(unless (find-package "CWRU_MSGS::CRIOSENSORS")
  (make-package "CWRU_MSGS::CRIOSENSORS"))

(in-package "ROS")
;;//! \htmlinclude cRIOSensors.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cwru_msgs::cRIOSensors
  :super ros::object
  :slots (_header _left_wheel_encoder _right_wheel_encoder _left_motor_encoder _right_motor_encoder _yaw_rate _yaw_temp _yaw_ref ))

(defmethod cwru_msgs::cRIOSensors
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left_wheel_encoder __left_wheel_encoder) 0)
    ((:right_wheel_encoder __right_wheel_encoder) 0)
    ((:left_motor_encoder __left_motor_encoder) 0)
    ((:right_motor_encoder __right_motor_encoder) 0)
    ((:yaw_rate __yaw_rate) 0)
    ((:yaw_temp __yaw_temp) 0)
    ((:yaw_ref __yaw_ref) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _left_wheel_encoder (round __left_wheel_encoder))
   (setq _right_wheel_encoder (round __right_wheel_encoder))
   (setq _left_motor_encoder (round __left_motor_encoder))
   (setq _right_motor_encoder (round __right_motor_encoder))
   (setq _yaw_rate (round __yaw_rate))
   (setq _yaw_temp (round __yaw_temp))
   (setq _yaw_ref (round __yaw_ref))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left_wheel_encoder
   (&optional __left_wheel_encoder)
   (if __left_wheel_encoder (setq _left_wheel_encoder __left_wheel_encoder)) _left_wheel_encoder)
  (:right_wheel_encoder
   (&optional __right_wheel_encoder)
   (if __right_wheel_encoder (setq _right_wheel_encoder __right_wheel_encoder)) _right_wheel_encoder)
  (:left_motor_encoder
   (&optional __left_motor_encoder)
   (if __left_motor_encoder (setq _left_motor_encoder __left_motor_encoder)) _left_motor_encoder)
  (:right_motor_encoder
   (&optional __right_motor_encoder)
   (if __right_motor_encoder (setq _right_motor_encoder __right_motor_encoder)) _right_motor_encoder)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:yaw_temp
   (&optional __yaw_temp)
   (if __yaw_temp (setq _yaw_temp __yaw_temp)) _yaw_temp)
  (:yaw_ref
   (&optional __yaw_ref)
   (if __yaw_ref (setq _yaw_ref __yaw_ref)) _yaw_ref)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _left_wheel_encoder
    4
    ;; int32 _right_wheel_encoder
    4
    ;; int32 _left_motor_encoder
    4
    ;; int32 _right_motor_encoder
    4
    ;; int16 _yaw_rate
    2
    ;; int16 _yaw_temp
    2
    ;; int16 _yaw_ref
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _left_wheel_encoder
       (write-long _left_wheel_encoder s)
     ;; int32 _right_wheel_encoder
       (write-long _right_wheel_encoder s)
     ;; int32 _left_motor_encoder
       (write-long _left_motor_encoder s)
     ;; int32 _right_motor_encoder
       (write-long _right_motor_encoder s)
     ;; int16 _yaw_rate
       (write-word _yaw_rate s)
     ;; int16 _yaw_temp
       (write-word _yaw_temp s)
     ;; int16 _yaw_ref
       (write-word _yaw_ref s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _left_wheel_encoder
     (setq _left_wheel_encoder (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _right_wheel_encoder
     (setq _right_wheel_encoder (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _left_motor_encoder
     (setq _left_motor_encoder (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _right_motor_encoder
     (setq _right_motor_encoder (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _yaw_temp
     (setq _yaw_temp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _yaw_ref
     (setq _yaw_ref (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get cwru_msgs::cRIOSensors :md5sum-) "210acf44f8ca85255cab84f619fb4f26")
(setf (get cwru_msgs::cRIOSensors :datatype-) "cwru_msgs/cRIOSensors")
(setf (get cwru_msgs::cRIOSensors :definition-)
      "Header header
int32 left_wheel_encoder
int32 right_wheel_encoder
int32 left_motor_encoder
int32 right_motor_encoder

int16 yaw_rate
int16 yaw_temp
int16 yaw_ref

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

")



(provide :cwru_msgs/cRIOSensors "210acf44f8ca85255cab84f619fb4f26")


