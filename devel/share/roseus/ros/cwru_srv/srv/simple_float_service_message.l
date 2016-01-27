;; Auto-generated. Do not edit!


(when (boundp 'cwru_srv::simple_float_service_message)
  (if (not (find-package "CWRU_SRV"))
    (make-package "CWRU_SRV"))
  (shadow 'simple_float_service_message (find-package "CWRU_SRV")))
(unless (find-package "CWRU_SRV::SIMPLE_FLOAT_SERVICE_MESSAGE")
  (make-package "CWRU_SRV::SIMPLE_FLOAT_SERVICE_MESSAGE"))
(unless (find-package "CWRU_SRV::SIMPLE_FLOAT_SERVICE_MESSAGEREQUEST")
  (make-package "CWRU_SRV::SIMPLE_FLOAT_SERVICE_MESSAGEREQUEST"))
(unless (find-package "CWRU_SRV::SIMPLE_FLOAT_SERVICE_MESSAGERESPONSE")
  (make-package "CWRU_SRV::SIMPLE_FLOAT_SERVICE_MESSAGERESPONSE"))

(in-package "ROS")





(defclass cwru_srv::simple_float_service_messageRequest
  :super ros::object
  :slots (_request_float32 ))

(defmethod cwru_srv::simple_float_service_messageRequest
  (:init
   (&key
    ((:request_float32 __request_float32) 0.0)
    )
   (send-super :init)
   (setq _request_float32 (float __request_float32))
   self)
  (:request_float32
   (&optional __request_float32)
   (if __request_float32 (setq _request_float32 __request_float32)) _request_float32)
  (:serialization-length
   ()
   (+
    ;; float32 _request_float32
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _request_float32
       (sys::poke _request_float32 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _request_float32
     (setq _request_float32 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cwru_srv::simple_float_service_messageResponse
  :super ros::object
  :slots (_resp ))

(defmethod cwru_srv::simple_float_service_messageResponse
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

(defclass cwru_srv::simple_float_service_message
  :super ros::object
  :slots ())

(setf (get cwru_srv::simple_float_service_message :md5sum-) "977b20eb68513f2dcfa12a9673ec2ddd")
(setf (get cwru_srv::simple_float_service_message :datatype-) "cwru_srv/simple_float_service_message")
(setf (get cwru_srv::simple_float_service_message :request) cwru_srv::simple_float_service_messageRequest)
(setf (get cwru_srv::simple_float_service_message :response) cwru_srv::simple_float_service_messageResponse)

(defmethod cwru_srv::simple_float_service_messageRequest
  (:response () (instance cwru_srv::simple_float_service_messageResponse :init)))

(setf (get cwru_srv::simple_float_service_messageRequest :md5sum-) "977b20eb68513f2dcfa12a9673ec2ddd")
(setf (get cwru_srv::simple_float_service_messageRequest :datatype-) "cwru_srv/simple_float_service_messageRequest")
(setf (get cwru_srv::simple_float_service_messageRequest :definition-)
      "float32 request_float32
---
bool resp

")

(setf (get cwru_srv::simple_float_service_messageResponse :md5sum-) "977b20eb68513f2dcfa12a9673ec2ddd")
(setf (get cwru_srv::simple_float_service_messageResponse :datatype-) "cwru_srv/simple_float_service_messageResponse")
(setf (get cwru_srv::simple_float_service_messageResponse :definition-)
      "float32 request_float32
---
bool resp

")



(provide :cwru_srv/simple_float_service_message "977b20eb68513f2dcfa12a9673ec2ddd")


