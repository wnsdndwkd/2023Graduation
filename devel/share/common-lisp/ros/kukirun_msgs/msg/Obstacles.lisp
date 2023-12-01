; Auto-generated. Do not edit!


(cl:in-package kukirun_msgs-msg)


;//! \htmlinclude Obstacles.msg.html

(cl:defclass <Obstacles> (roslisp-msg-protocol:ros-message)
  ((obstacles
    :reader obstacles
    :initarg :obstacles
    :type (cl:vector kukirun_msgs-msg:Obstacle)
   :initform (cl:make-array 0 :element-type 'kukirun_msgs-msg:Obstacle :initial-element (cl:make-instance 'kukirun_msgs-msg:Obstacle))))
)

(cl:defclass Obstacles (<Obstacles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Obstacles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Obstacles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kukirun_msgs-msg:<Obstacles> is deprecated: use kukirun_msgs-msg:Obstacles instead.")))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <Obstacles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kukirun_msgs-msg:obstacles-val is deprecated.  Use kukirun_msgs-msg:obstacles instead.")
  (obstacles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Obstacles>) ostream)
  "Serializes a message object of type '<Obstacles>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Obstacles>) istream)
  "Deserializes a message object of type '<Obstacles>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'kukirun_msgs-msg:Obstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Obstacles>)))
  "Returns string type for a message object of type '<Obstacles>"
  "kukirun_msgs/Obstacles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Obstacles)))
  "Returns string type for a message object of type 'Obstacles"
  "kukirun_msgs/Obstacles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Obstacles>)))
  "Returns md5sum for a message object of type '<Obstacles>"
  "04e65738e06f419f276514823cafe660")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Obstacles)))
  "Returns md5sum for a message object of type 'Obstacles"
  "04e65738e06f419f276514823cafe660")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Obstacles>)))
  "Returns full string definition for message of type '<Obstacles>"
  (cl:format cl:nil "kukirun_msgs/Obstacle[] obstacles~%================================================================================~%MSG: kukirun_msgs/Obstacle~%float32 x~%float32 y~%float32 z~%float32 radius~%float32 velocity~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Obstacles)))
  "Returns full string definition for message of type 'Obstacles"
  (cl:format cl:nil "kukirun_msgs/Obstacle[] obstacles~%================================================================================~%MSG: kukirun_msgs/Obstacle~%float32 x~%float32 y~%float32 z~%float32 radius~%float32 velocity~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Obstacles>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Obstacles>))
  "Converts a ROS message object to a list"
  (cl:list 'Obstacles
    (cl:cons ':obstacles (obstacles msg))
))
