;; Auto-generated. Do not edit!


(when (boundp 'cwru_msgs::Sonar)
  (if (not (find-package "CWRU_MSGS"))
    (make-package "CWRU_MSGS"))
  (shadow 'Sonar (find-package "CWRU_MSGS")))
(unless (find-package "CWRU_MSGS::SONAR")
  (make-package "CWRU_MSGS::SONAR"))

(in-package "ROS")
;;//! \htmlinclude Sonar.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cwru_msgs::Sonar
  :super ros::object
  :slots (_header _dist ))

(defmethod cwru_msgs::Sonar
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:dist __dist) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _dist (float __dist))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:dist
   (&optional __dist)
   (if __dist (setq _dist __dist)) _dist)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _dist
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _dist
       (sys::poke _dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _dist
     (setq _dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cwru_msgs::Sonar :md5sum-) "32a7fd24a5630b5643e0d1882893197a")
(setf (get cwru_msgs::Sonar :datatype-) "cwru_msgs/Sonar")
(setf (get cwru_msgs::Sonar :definition-)
      "Header header
float32 dist

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



(provide :cwru_msgs/Sonar "32a7fd24a5630b5643e0d1882893197a")


