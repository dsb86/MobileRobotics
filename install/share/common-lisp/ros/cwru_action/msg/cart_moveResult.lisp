; Auto-generated. Do not edit!


(cl:in-package cwru_action-msg)


;//! \htmlinclude cart_moveResult.msg.html

(cl:defclass <cart_moveResult> (roslisp-msg-protocol:ros-message)
  ((err_code
    :reader err_code
    :initarg :err_code
    :type cl:integer
    :initform 0)
   (err_msg
    :reader err_msg
    :initarg :err_msg
    :type cl:string
    :initform ""))
)

(cl:defclass cart_moveResult (<cart_moveResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cart_moveResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cart_moveResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cwru_action-msg:<cart_moveResult> is deprecated: use cwru_action-msg:cart_moveResult instead.")))

(cl:ensure-generic-function 'err_code-val :lambda-list '(m))
(cl:defmethod err_code-val ((m <cart_moveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cwru_action-msg:err_code-val is deprecated.  Use cwru_action-msg:err_code instead.")
  (err_code m))

(cl:ensure-generic-function 'err_msg-val :lambda-list '(m))
(cl:defmethod err_msg-val ((m <cart_moveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cwru_action-msg:err_msg-val is deprecated.  Use cwru_action-msg:err_msg instead.")
  (err_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cart_moveResult>) ostream)
  "Serializes a message object of type '<cart_moveResult>"
  (cl:let* ((signed (cl:slot-value msg 'err_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'err_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'err_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cart_moveResult>) istream)
  "Deserializes a message object of type '<cart_moveResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'err_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'err_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'err_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cart_moveResult>)))
  "Returns string type for a message object of type '<cart_moveResult>"
  "cwru_action/cart_moveResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cart_moveResult)))
  "Returns string type for a message object of type 'cart_moveResult"
  "cwru_action/cart_moveResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cart_moveResult>)))
  "Returns md5sum for a message object of type '<cart_moveResult>"
  "4994be0662f534b12a751a9710b92a4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cart_moveResult)))
  "Returns md5sum for a message object of type 'cart_moveResult"
  "4994be0662f534b12a751a9710b92a4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cart_moveResult>)))
  "Returns full string definition for message of type '<cart_moveResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%int32 err_code~%string err_msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cart_moveResult)))
  "Returns full string definition for message of type 'cart_moveResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%int32 err_code~%string err_msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cart_moveResult>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'err_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cart_moveResult>))
  "Converts a ROS message object to a list"
  (cl:list 'cart_moveResult
    (cl:cons ':err_code (err_code msg))
    (cl:cons ':err_msg (err_msg msg))
))
