;; Auto-generated. Do not edit!


(when (boundp 'cwru_srv::simple_bool_service_message)
  (if (not (find-package "CWRU_SRV"))
    (make-package "CWRU_SRV"))
  (shadow 'simple_bool_service_message (find-package "CWRU_SRV")))
(unless (find-package "CWRU_SRV::SIMPLE_BOOL_SERVICE_MESSAGE")
  (make-package "CWRU_SRV::SIMPLE_BOOL_SERVICE_MESSAGE"))
(unless (find-package "CWRU_SRV::SIMPLE_BOOL_SERVICE_MESSAGEREQUEST")
  (make-package "CWRU_SRV::SIMPLE_BOOL_SERVICE_MESSAGEREQUEST"))
(unless (find-package "CWRU_SRV::SIMPLE_BOOL_SERVICE_MESSAGERESPONSE")
  (make-package "CWRU_SRV::SIMPLE_BOOL_SERVICE_MESSAGERESPONSE"))

(in-package "ROS")





(defclass cwru_srv::simple_bool_service_messageRequest
  :super ros::object
  :slots (_req ))

(defmethod cwru_srv::simple_bool_service_messageRequest
  (:init
   (&key
    ((:req __req) nil)
    )
   (send-super :init)
   (setq _req __req)
   self)
  (:req
   (&optional __req)
   (if __req (setq _req __req)) _req)
  (:serialization-length
   ()
   (+
    ;; bool _req
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _req
       (if _req (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _req
     (setq _req (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cwru_srv::simple_bool_service_messageResponse
  :super ros::object
  :slots (_resp ))

(defmethod cwru_srv::simple_bool_service_messageResponse
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

(defclass cwru_srv::simple_bool_service_message
  :super ros::object
  :slots ())

(setf (get cwru_srv::simple_bool_service_message :md5sum-) "c42a7ecd5bbbf1290f8a630b218058f2")
(setf (get cwru_srv::simple_bool_service_message :datatype-) "cwru_srv/simple_bool_service_message")
(setf (get cwru_srv::simple_bool_service_message :request) cwru_srv::simple_bool_service_messageRequest)
(setf (get cwru_srv::simple_bool_service_message :response) cwru_srv::simple_bool_service_messageResponse)

(defmethod cwru_srv::simple_bool_service_messageRequest
  (:response () (instance cwru_srv::simple_bool_service_messageResponse :init)))

(setf (get cwru_srv::simple_bool_service_messageRequest :md5sum-) "c42a7ecd5bbbf1290f8a630b218058f2")
(setf (get cwru_srv::simple_bool_service_messageRequest :datatype-) "cwru_srv/simple_bool_service_messageRequest")
(setf (get cwru_srv::simple_bool_service_messageRequest :definition-)
      "bool req
---
bool resp

")

(setf (get cwru_srv::simple_bool_service_messageResponse :md5sum-) "c42a7ecd5bbbf1290f8a630b218058f2")
(setf (get cwru_srv::simple_bool_service_messageResponse :datatype-) "cwru_srv/simple_bool_service_messageResponse")
(setf (get cwru_srv::simple_bool_service_messageResponse :definition-)
      "bool req
---
bool resp

")



(provide :cwru_srv/simple_bool_service_message "c42a7ecd5bbbf1290f8a630b218058f2")


