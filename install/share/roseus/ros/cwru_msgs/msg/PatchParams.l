;; Auto-generated. Do not edit!


(when (boundp 'cwru_msgs::PatchParams)
  (if (not (find-package "CWRU_MSGS"))
    (make-package "CWRU_MSGS"))
  (shadow 'PatchParams (find-package "CWRU_MSGS")))
(unless (find-package "CWRU_MSGS::PATCHPARAMS")
  (make-package "CWRU_MSGS::PATCHPARAMS"))

(in-package "ROS")
;;//! \htmlinclude PatchParams.msg.html


(defclass cwru_msgs::PatchParams
  :super ros::object
  :slots (_centroid _normal_vec _offset _frame_id ))

(defmethod cwru_msgs::PatchParams
  (:init
   (&key
    ((:centroid __centroid) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:normal_vec __normal_vec) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:offset __offset) 0.0)
    ((:frame_id __frame_id) "")
    )
   (send-super :init)
   (setq _centroid __centroid)
   (setq _normal_vec __normal_vec)
   (setq _offset (float __offset))
   (setq _frame_id (string __frame_id))
   self)
  (:centroid
   (&optional __centroid)
   (if __centroid (setq _centroid __centroid)) _centroid)
  (:normal_vec
   (&optional __normal_vec)
   (if __normal_vec (setq _normal_vec __normal_vec)) _normal_vec)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:serialization-length
   ()
   (+
    ;; float64[] _centroid
    (* 8    (length _centroid)) 4
    ;; float64[] _normal_vec
    (* 8    (length _normal_vec)) 4
    ;; float64 _offset
    8
    ;; string _frame_id
    4 (length _frame_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _centroid
     (write-long (length _centroid) s)
     (dotimes (i (length _centroid))
       (sys::poke (elt _centroid i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _normal_vec
     (write-long (length _normal_vec) s)
     (dotimes (i (length _normal_vec))
       (sys::poke (elt _normal_vec i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _offset
       (sys::poke _offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _centroid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _centroid (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _centroid i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _normal_vec
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _normal_vec (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _normal_vec i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _offset
     (setq _offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cwru_msgs::PatchParams :md5sum-) "e1ad50e23fc909e2a83662c92134d2e0")
(setf (get cwru_msgs::PatchParams :datatype-) "cwru_msgs/PatchParams")
(setf (get cwru_msgs::PatchParams :definition-)
      "#patch params: parameters describing a planar patch
#a geometric planar fit to the patch is described in terms of a normal vector and 
#distance of the plane from the origin of the reference frame
#also provide centroid of the plane
float64[] centroid # 3-D x,y,z centroid of the patch
float64[] normal_vec # nx, ny, nz normal vector of the planar patch
float64 offset # distance of the geometric plane from the reference-frame origin
string frame_id #desirably, specify the reference frame for the data contained herein

")



(provide :cwru_msgs/PatchParams "e1ad50e23fc909e2a83662c92134d2e0")


