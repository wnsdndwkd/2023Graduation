; Auto-generated. Do not edit!


(cl:in-package kukirun_msgs-msg)


;//! \htmlinclude Coefficient.msg.html

(cl:defclass <Coefficient> (roslisp-msg-protocol:ros-message)
  ((a0
    :reader a0
    :initarg :a0
    :type cl:float
    :initform 0.0)
   (a1
    :reader a1
    :initarg :a1
    :type cl:float
    :initform 0.0)
   (a2
    :reader a2
    :initarg :a2
    :type cl:float
    :initform 0.0)
   (a3
    :reader a3
    :initarg :a3
    :type cl:float
    :initform 0.0))
)

(cl:defclass Coefficient (<Coefficient>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Coefficient>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Coefficient)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kukirun_msgs-msg:<Coefficient> is deprecated: use kukirun_msgs-msg:Coefficient instead.")))

(cl:ensure-generic-function 'a0-val :lambda-list '(m))
(cl:defmethod a0-val ((m <Coefficient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kukirun_msgs-msg:a0-val is deprecated.  Use kukirun_msgs-msg:a0 instead.")
  (a0 m))

(cl:ensure-generic-function 'a1-val :lambda-list '(m))
(cl:defmethod a1-val ((m <Coefficient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kukirun_msgs-msg:a1-val is deprecated.  Use kukirun_msgs-msg:a1 instead.")
  (a1 m))

(cl:ensure-generic-function 'a2-val :lambda-list '(m))
(cl:defmethod a2-val ((m <Coefficient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kukirun_msgs-msg:a2-val is deprecated.  Use kukirun_msgs-msg:a2 instead.")
  (a2 m))

(cl:ensure-generic-function 'a3-val :lambda-list '(m))
(cl:defmethod a3-val ((m <Coefficient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kukirun_msgs-msg:a3-val is deprecated.  Use kukirun_msgs-msg:a3 instead.")
  (a3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Coefficient>) ostream)
  "Serializes a message object of type '<Coefficient>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Coefficient>) istream)
  "Deserializes a message object of type '<Coefficient>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a3) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Coefficient>)))
  "Returns string type for a message object of type '<Coefficient>"
  "kukirun_msgs/Coefficient")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Coefficient)))
  "Returns string type for a message object of type 'Coefficient"
  "kukirun_msgs/Coefficient")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Coefficient>)))
  "Returns md5sum for a message object of type '<Coefficient>"
  "02922718d211cab15568610aec8c412d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Coefficient)))
  "Returns md5sum for a message object of type 'Coefficient"
  "02922718d211cab15568610aec8c412d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Coefficient>)))
  "Returns full string definition for message of type '<Coefficient>"
  (cl:format cl:nil "float32 a0~%float32 a1~%float32 a2~%float32 a3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Coefficient)))
  "Returns full string definition for message of type 'Coefficient"
  (cl:format cl:nil "float32 a0~%float32 a1~%float32 a2~%float32 a3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Coefficient>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Coefficient>))
  "Converts a ROS message object to a list"
  (cl:list 'Coefficient
    (cl:cons ':a0 (a0 msg))
    (cl:cons ':a1 (a1 msg))
    (cl:cons ':a2 (a2 msg))
    (cl:cons ':a3 (a3 msg))
))
