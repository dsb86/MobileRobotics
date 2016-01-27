;; Auto-generated. Do not edit!


(when (boundp 'cwru_msgs::VecOfDoubles)
  (if (not (find-package "CWRU_MSGS"))
    (make-package "CWRU_MSGS"))
  (shadow 'VecOfDoubles (find-package "CWRU_MSGS")))
(unless (find-package "CWRU_MSGS::VECOFDOUBLES")
  (make-package "CWRU_MSGS::VECOFDOUBLES"))

(in-package "ROS")
;;//! \htmlinclude VecOfDoubles.msg.html


(defclass cwru_msgs::VecOfDoubles
  :super ros::object
  :slots (_dbl_vec ))

(defmethod cwru_msgs::VecOfDoubles
  (:init
   (&key
    ((:dbl_vec __dbl_vec) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _dbl_vec __dbl_vec)
   self)
  (:dbl_vec
   (&optional __dbl_vec)
   (if __dbl_vec (setq _dbl_vec __dbl_vec)) _dbl_vec)
  (:serialization-length
   ()
   (+
    ;; float64[] _dbl_vec
    (* 8    (length _dbl_vec)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _dbl_vec
     (write-long (length _dbl_vec) s)
     (dotimes (i (length _dbl_vec))
       (sys::poke (elt _dbl_vec i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _dbl_vec
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dbl_vec (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dbl_vec i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get cwru_msgs::VecOfDoubles :md5sum-) "e9ddfb3c374c7aa1ad63fcedb2691ab2")
(setf (get cwru_msgs::VecOfDoubles :datatype-) "cwru_msgs/VecOfDoubles")
(setf (get cwru_msgs::VecOfDoubles :definition-)
      "float64[] dbl_vec

")



(provide :cwru_msgs/VecOfDoubles "e9ddfb3c374c7aa1ad63fcedb2691ab2")


