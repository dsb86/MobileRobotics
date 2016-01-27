;; Auto-generated. Do not edit!


(when (boundp 'cwru_msgs::Pose)
  (if (not (find-package "CWRU_MSGS"))
    (make-package "CWRU_MSGS"))
  (shadow 'Pose (find-package "CWRU_MSGS")))
(unless (find-package "CWRU_MSGS::POSE")
  (make-package "CWRU_MSGS::POSE"))

(in-package "ROS")
;;//! \htmlinclude Pose.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cwru_msgs::Pose
  :super ros::object
  :slots (_header _x _y _theta _vel _omega _x_var _y_var _theta_var _vel_var _omega_var ))

(defmethod cwru_msgs::Pose
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    ((:vel __vel) 0.0)
    ((:omega __omega) 0.0)
    ((:x_var __x_var) 0.0)
    ((:y_var __y_var) 0.0)
    ((:theta_var __theta_var) 0.0)
    ((:vel_var __vel_var) 0.0)
    ((:omega_var __omega_var) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   (setq _vel (float __vel))
   (setq _omega (float __omega))
   (setq _x_var (float __x_var))
   (setq _y_var (float __y_var))
   (setq _theta_var (float __theta_var))
   (setq _vel_var (float __vel_var))
   (setq _omega_var (float __omega_var))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:omega
   (&optional __omega)
   (if __omega (setq _omega __omega)) _omega)
  (:x_var
   (&optional __x_var)
   (if __x_var (setq _x_var __x_var)) _x_var)
  (:y_var
   (&optional __y_var)
   (if __y_var (setq _y_var __y_var)) _y_var)
  (:theta_var
   (&optional __theta_var)
   (if __theta_var (setq _theta_var __theta_var)) _theta_var)
  (:vel_var
   (&optional __vel_var)
   (if __vel_var (setq _vel_var __vel_var)) _vel_var)
  (:omega_var
   (&optional __omega_var)
   (if __omega_var (setq _omega_var __omega_var)) _omega_var)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _theta
    4
    ;; float32 _vel
    4
    ;; float32 _omega
    4
    ;; float32 _x_var
    4
    ;; float32 _y_var
    4
    ;; float32 _theta_var
    4
    ;; float32 _vel_var
    4
    ;; float32 _omega_var
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _omega
       (sys::poke _omega (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x_var
       (sys::poke _x_var (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_var
       (sys::poke _y_var (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta_var
       (sys::poke _theta_var (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel_var
       (sys::poke _vel_var (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _omega_var
       (sys::poke _omega_var (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel
     (setq _vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _omega
     (setq _omega (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x_var
     (setq _x_var (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_var
     (setq _y_var (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta_var
     (setq _theta_var (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel_var
     (setq _vel_var (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _omega_var
     (setq _omega_var (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cwru_msgs::Pose :md5sum-) "7ce3d88c4d07be05d54abf722834318f")
(setf (get cwru_msgs::Pose :datatype-) "cwru_msgs/Pose")
(setf (get cwru_msgs::Pose :definition-)
      "Header header
float32 x
float32 y
float32 theta
float32 vel
float32 omega
float32 x_var
float32 y_var
float32 theta_var
float32 vel_var
float32 omega_var

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



(provide :cwru_msgs/Pose "7ce3d88c4d07be05d54abf722834318f")


