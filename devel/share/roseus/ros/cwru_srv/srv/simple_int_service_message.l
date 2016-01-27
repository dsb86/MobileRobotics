;; Auto-generated. Do not edit!


(when (boundp 'cwru_srv::simple_int_service_message)
  (if (not (find-package "CWRU_SRV"))
    (make-package "CWRU_SRV"))
  (shadow 'simple_int_service_message (find-package "CWRU_SRV")))
(unless (find-package "CWRU_SRV::SIMPLE_INT_SERVICE_MESSAGE")
  (make-package "CWRU_SRV::SIMPLE_INT_SERVICE_MESSAGE"))
(unless (find-package "CWRU_SRV::SIMPLE_INT_SERVICE_MESSAGEREQUEST")
  (make-package "CWRU_SRV::SIMPLE_INT_SERVICE_MESSAGEREQUEST"))
(unless (find-package "CWRU_SRV::SIMPLE_INT_SERVICE_MESSAGERESPONSE")
  (make-package "CWRU_SRV::SIMPLE_INT_SERVICE_MESSAGERESPONSE"))

(in-package "ROS")





(defclass cwru_srv::simple_int_service_messageRequest
  :super ros::object
  :slots (_req ))

(defmethod cwru_srv::simple_int_service_messageRequest
  (:init
   (&key
    ((:req __req) 0)
    )
   (send-super :init)
   (setq _req (round __req))
   self)
  (:req
   (&optional __req)
   (if __req (setq _req __req)) _req)
  (:serialization-length
   ()
   (+
    ;; int32 _req
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _req
       (write-long _req s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _req
     (setq _req (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cwru_srv::simple_int_service_messageResponse
  :super ros::object
  :slots (_resp ))

(defmethod cwru_srv::simple_int_service_messageResponse
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

(defclass cwru_srv::simple_int_service_message
  :super ros::object
  :slots ())

(setf (get cwru_srv::simple_int_service_message :md5sum-) "c49d0f7868853fab9232ec73af78c8d2")
(setf (get cwru_srv::simple_int_service_message :datatype-) "cwru_srv/simple_int_service_message")
(setf (get cwru_srv::simple_int_service_message :request) cwru_srv::simple_int_service_messageRequest)
(setf (get cwru_srv::simple_int_service_message :response) cwru_srv::simple_int_service_messageResponse)

(defmethod cwru_srv::simple_int_service_messageRequest
  (:response () (instance cwru_srv::simple_int_service_messageResponse :init)))

(setf (get cwru_srv::simple_int_service_messageRequest :md5sum-) "c49d0f7868853fab9232ec73af78c8d2")
(setf (get cwru_srv::simple_int_service_messageRequest :datatype-) "cwru_srv/simple_int_service_messageRequest")
(setf (get cwru_srv::simple_int_service_messageRequest :definition-)
      "int32 req
---
bool resp

")

(setf (get cwru_srv::simple_int_service_messageResponse :md5sum-) "c49d0f7868853fab9232ec73af78c8d2")
(setf (get cwru_srv::simple_int_service_messageResponse :datatype-) "cwru_srv/simple_int_service_messageResponse")
(setf (get cwru_srv::simple_int_service_messageResponse :definition-)
      "int32 req
---
bool resp

")



(provide :cwru_srv/simple_int_service_message "c49d0f7868853fab9232ec73af78c8d2")


