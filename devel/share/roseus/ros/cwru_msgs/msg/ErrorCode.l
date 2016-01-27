;; Auto-generated. Do not edit!


(when (boundp 'cwru_msgs::ErrorCode)
  (if (not (find-package "CWRU_MSGS"))
    (make-package "CWRU_MSGS"))
  (shadow 'ErrorCode (find-package "CWRU_MSGS")))
(unless (find-package "CWRU_MSGS::ERRORCODE")
  (make-package "CWRU_MSGS::ERRORCODE"))

(in-package "ROS")
;;//! \htmlinclude ErrorCode.msg.html


(intern "*PLANNING_FAILED*" (find-package "CWRU_MSGS::ERRORCODE"))
(shadow '*PLANNING_FAILED* (find-package "CWRU_MSGS::ERRORCODE"))
(defconstant cwru_msgs::ErrorCode::*PLANNING_FAILED* -1)
(intern "*SUCCESS*" (find-package "CWRU_MSGS::ERRORCODE"))
(shadow '*SUCCESS* (find-package "CWRU_MSGS::ERRORCODE"))
(defconstant cwru_msgs::ErrorCode::*SUCCESS* 1)
(defclass cwru_msgs::ErrorCode
  :super ros::object
  :slots (_val ))

(defmethod cwru_msgs::ErrorCode
  (:init
   (&key
    ((:val __val) 0)
    )
   (send-super :init)
   (setq _val (round __val))
   self)
  (:val
   (&optional __val)
   (if __val (setq _val __val)) _val)
  (:serialization-length
   ()
   (+
    ;; int32 _val
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _val
       (write-long _val s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _val
     (setq _val (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cwru_msgs::ErrorCode :md5sum-) "c82f63c84d402abe94fbefc7f5feebf6")
(setf (get cwru_msgs::ErrorCode :datatype-) "cwru_msgs/ErrorCode")
(setf (get cwru_msgs::ErrorCode :definition-)
      "int32 PLANNING_FAILED=-1
int32 SUCCESS=1
int32 val

")



(provide :cwru_msgs/ErrorCode "c82f63c84d402abe94fbefc7f5feebf6")


