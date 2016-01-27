;; Auto-generated. Do not edit!


(when (boundp 'cwru_msgs::PowerState)
  (if (not (find-package "CWRU_MSGS"))
    (make-package "CWRU_MSGS"))
  (shadow 'PowerState (find-package "CWRU_MSGS")))
(unless (find-package "CWRU_MSGS::POWERSTATE")
  (make-package "CWRU_MSGS::POWERSTATE"))

(in-package "ROS")
;;//! \htmlinclude PowerState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cwru_msgs::PowerState
  :super ros::object
  :slots (_header _battery_voltage _cRIO_voltage _v13_8_voltage _motor_voltage ))

(defmethod cwru_msgs::PowerState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:battery_voltage __battery_voltage) 0.0)
    ((:cRIO_voltage __cRIO_voltage) 0.0)
    ((:v13_8_voltage __v13_8_voltage) 0.0)
    ((:motor_voltage __motor_voltage) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _battery_voltage (float __battery_voltage))
   (setq _cRIO_voltage (float __cRIO_voltage))
   (setq _v13_8_voltage (float __v13_8_voltage))
   (setq _motor_voltage (float __motor_voltage))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:battery_voltage
   (&optional __battery_voltage)
   (if __battery_voltage (setq _battery_voltage __battery_voltage)) _battery_voltage)
  (:cRIO_voltage
   (&optional __cRIO_voltage)
   (if __cRIO_voltage (setq _cRIO_voltage __cRIO_voltage)) _cRIO_voltage)
  (:v13_8_voltage
   (&optional __v13_8_voltage)
   (if __v13_8_voltage (setq _v13_8_voltage __v13_8_voltage)) _v13_8_voltage)
  (:motor_voltage
   (&optional __motor_voltage)
   (if __motor_voltage (setq _motor_voltage __motor_voltage)) _motor_voltage)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _battery_voltage
    4
    ;; float32 _cRIO_voltage
    4
    ;; float32 _v13_8_voltage
    4
    ;; float32 _motor_voltage
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _battery_voltage
       (sys::poke _battery_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cRIO_voltage
       (sys::poke _cRIO_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v13_8_voltage
       (sys::poke _v13_8_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _motor_voltage
       (sys::poke _motor_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _battery_voltage
     (setq _battery_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cRIO_voltage
     (setq _cRIO_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v13_8_voltage
     (setq _v13_8_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _motor_voltage
     (setq _motor_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cwru_msgs::PowerState :md5sum-) "28d9736fc054adc56d7b67c1f71a6b0d")
(setf (get cwru_msgs::PowerState :datatype-) "cwru_msgs/PowerState")
(setf (get cwru_msgs::PowerState :definition-)
      "Header header
float32 battery_voltage
float32 cRIO_voltage
float32 v13_8_voltage
float32 motor_voltage

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



(provide :cwru_msgs/PowerState "28d9736fc054adc56d7b67c1f71a6b0d")


