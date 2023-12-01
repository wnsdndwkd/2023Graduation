; Auto-generated. Do not edit!


(cl:in-package kukirun_msgs-msg)


;//! \htmlinclude Trajectory.msg.html

(cl:defclass <Trajectory> (roslisp-msg-protocol:ros-message)
  ((valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil)
   (points
    :reader points
    :initarg :points
    :type (cl:vector kukirun_msgs-msg:TrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'kukirun_msgs-msg:TrajectoryPoint :initial-element (cl:make-instance 'kukirun_msgs-msg:TrajectoryPoint))))
)

(cl:defclass Trajectory (<Trajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kukirun_msgs-msg:<Trajectory> is deprecated: use kukirun_msgs-msg:Trajectory instead.")))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kukirun_msgs-msg:valid-val is deprecated.  Use kukirun_msgs-msg:valid instead.")
  (valid m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kukirun_msgs-msg:points-val is deprecated.  Use kukirun_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trajectory>) ostream)
  "Serializes a message object of type '<Trajectory>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trajectory>) istream)
  "Deserializes a message object of type '<Trajectory>"
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'kukirun_msgs-msg:TrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trajectory>)))
  "Returns string type for a message object of type '<Trajectory>"
  "kukirun_msgs/Trajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trajectory)))
  "Returns string type for a message object of type 'Trajectory"
  "kukirun_msgs/Trajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trajectory>)))
  "Returns md5sum for a message object of type '<Trajectory>"
  "4ec8a1e337a33f6114ce23821c0c50bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trajectory)))
  "Returns md5sum for a message object of type 'Trajectory"
  "4ec8a1e337a33f6114ce23821c0c50bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trajectory>)))
  "Returns full string definition for message of type '<Trajectory>"
  (cl:format cl:nil "bool valid~%kukirun_msgs/TrajectoryPoint[] points~%================================================================================~%MSG: kukirun_msgs/TrajectoryPoint~%int32 id~%float32 x~%float32 y~%float32 speed~%float32 yaw~%float32 curvature~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trajectory)))
  "Returns full string definition for message of type 'Trajectory"
  (cl:format cl:nil "bool valid~%kukirun_msgs/TrajectoryPoint[] points~%================================================================================~%MSG: kukirun_msgs/TrajectoryPoint~%int32 id~%float32 x~%float32 y~%float32 speed~%float32 yaw~%float32 curvature~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trajectory>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'Trajectory
    (cl:cons ':valid (valid msg))
    (cl:cons ':points (points msg))
))
