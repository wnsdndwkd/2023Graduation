; Auto-generated. Do not edit!


(cl:in-package kukirun_msgs-msg)


;//! \htmlinclude Traffic.msg.html

(cl:defclass <Traffic> (roslisp-msg-protocol:ros-message)
  ((trafficsign
    :reader trafficsign
    :initarg :trafficsign
    :type cl:integer
    :initform 0)
   (trafficsign_1
    :reader trafficsign_1
    :initarg :trafficsign_1
    :type cl:integer
    :initform 0)
   (trafficsign_2
    :reader trafficsign_2
    :initarg :trafficsign_2
    :type cl:integer
    :initform 0)
   (trafficsign_3
    :reader trafficsign_3
    :initarg :trafficsign_3
    :type cl:integer
    :initform 0))
)

(cl:defclass Traffic (<Traffic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Traffic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Traffic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kukirun_msgs-msg:<Traffic> is deprecated: use kukirun_msgs-msg:Traffic instead.")))

(cl:ensure-generic-function 'trafficsign-val :lambda-list '(m))
(cl:defmethod trafficsign-val ((m <Traffic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kukirun_msgs-msg:trafficsign-val is deprecated.  Use kukirun_msgs-msg:trafficsign instead.")
  (trafficsign m))

(cl:ensure-generic-function 'trafficsign_1-val :lambda-list '(m))
(cl:defmethod trafficsign_1-val ((m <Traffic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kukirun_msgs-msg:trafficsign_1-val is deprecated.  Use kukirun_msgs-msg:trafficsign_1 instead.")
  (trafficsign_1 m))

(cl:ensure-generic-function 'trafficsign_2-val :lambda-list '(m))
(cl:defmethod trafficsign_2-val ((m <Traffic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kukirun_msgs-msg:trafficsign_2-val is deprecated.  Use kukirun_msgs-msg:trafficsign_2 instead.")
  (trafficsign_2 m))

(cl:ensure-generic-function 'trafficsign_3-val :lambda-list '(m))
(cl:defmethod trafficsign_3-val ((m <Traffic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kukirun_msgs-msg:trafficsign_3-val is deprecated.  Use kukirun_msgs-msg:trafficsign_3 instead.")
  (trafficsign_3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Traffic>) ostream)
  "Serializes a message object of type '<Traffic>"
  (cl:let* ((signed (cl:slot-value msg 'trafficsign)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'trafficsign_1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'trafficsign_2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'trafficsign_3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Traffic>) istream)
  "Deserializes a message object of type '<Traffic>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trafficsign) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trafficsign_1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trafficsign_2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trafficsign_3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Traffic>)))
  "Returns string type for a message object of type '<Traffic>"
  "kukirun_msgs/Traffic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Traffic)))
  "Returns string type for a message object of type 'Traffic"
  "kukirun_msgs/Traffic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Traffic>)))
  "Returns md5sum for a message object of type '<Traffic>"
  "c68a17eb503576fe17e72e4e585ded61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Traffic)))
  "Returns md5sum for a message object of type 'Traffic"
  "c68a17eb503576fe17e72e4e585ded61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Traffic>)))
  "Returns full string definition for message of type '<Traffic>"
  (cl:format cl:nil "int32 trafficsign~%int32 trafficsign_1~%int32 trafficsign_2~%int32 trafficsign_3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Traffic)))
  "Returns full string definition for message of type 'Traffic"
  (cl:format cl:nil "int32 trafficsign~%int32 trafficsign_1~%int32 trafficsign_2~%int32 trafficsign_3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Traffic>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Traffic>))
  "Converts a ROS message object to a list"
  (cl:list 'Traffic
    (cl:cons ':trafficsign (trafficsign msg))
    (cl:cons ':trafficsign_1 (trafficsign_1 msg))
    (cl:cons ':trafficsign_2 (trafficsign_2 msg))
    (cl:cons ':trafficsign_3 (trafficsign_3 msg))
))
