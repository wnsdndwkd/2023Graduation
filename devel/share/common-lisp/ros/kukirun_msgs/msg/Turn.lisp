; Auto-generated. Do not edit!


(cl:in-package kukirun_msgs-msg)


;//! \htmlinclude Turn.msg.html

(cl:defclass <Turn> (roslisp-msg-protocol:ros-message)
  ((exist
    :reader exist
    :initarg :exist
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Turn (<Turn>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Turn>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Turn)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kukirun_msgs-msg:<Turn> is deprecated: use kukirun_msgs-msg:Turn instead.")))

(cl:ensure-generic-function 'exist-val :lambda-list '(m))
(cl:defmethod exist-val ((m <Turn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kukirun_msgs-msg:exist-val is deprecated.  Use kukirun_msgs-msg:exist instead.")
  (exist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Turn>) ostream)
  "Serializes a message object of type '<Turn>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'exist) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Turn>) istream)
  "Deserializes a message object of type '<Turn>"
    (cl:setf (cl:slot-value msg 'exist) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Turn>)))
  "Returns string type for a message object of type '<Turn>"
  "kukirun_msgs/Turn")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Turn)))
  "Returns string type for a message object of type 'Turn"
  "kukirun_msgs/Turn")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Turn>)))
  "Returns md5sum for a message object of type '<Turn>"
  "86055aa20f8115cdfd4917a9e28d29bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Turn)))
  "Returns md5sum for a message object of type 'Turn"
  "86055aa20f8115cdfd4917a9e28d29bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Turn>)))
  "Returns full string definition for message of type '<Turn>"
  (cl:format cl:nil "bool exist~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Turn)))
  "Returns full string definition for message of type 'Turn"
  (cl:format cl:nil "bool exist~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Turn>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Turn>))
  "Converts a ROS message object to a list"
  (cl:list 'Turn
    (cl:cons ':exist (exist msg))
))
