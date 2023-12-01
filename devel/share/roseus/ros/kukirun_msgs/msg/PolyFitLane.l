;; Auto-generated. Do not edit!


(when (boundp 'kukirun_msgs::PolyFitLane)
  (if (not (find-package "KUKIRUN_MSGS"))
    (make-package "KUKIRUN_MSGS"))
  (shadow 'PolyFitLane (find-package "KUKIRUN_MSGS")))
(unless (find-package "KUKIRUN_MSGS::POLYFITLANE")
  (make-package "KUKIRUN_MSGS::POLYFITLANE"))

(in-package "ROS")
;;//! \htmlinclude PolyFitLane.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kukirun_msgs::PolyFitLane
  :super ros::object
  :slots (_header _valid _max_x _a0 _a1 _a2 _a3 ))

(defmethod kukirun_msgs::PolyFitLane
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:valid __valid) nil)
    ((:max_x __max_x) 0.0)
    ((:a0 __a0) 0.0)
    ((:a1 __a1) 0.0)
    ((:a2 __a2) 0.0)
    ((:a3 __a3) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _valid __valid)
   (setq _max_x (float __max_x))
   (setq _a0 (float __a0))
   (setq _a1 (float __a1))
   (setq _a2 (float __a2))
   (setq _a3 (float __a3))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:max_x
   (&optional __max_x)
   (if __max_x (setq _max_x __max_x)) _max_x)
  (:a0
   (&optional __a0)
   (if __a0 (setq _a0 __a0)) _a0)
  (:a1
   (&optional __a1)
   (if __a1 (setq _a1 __a1)) _a1)
  (:a2
   (&optional __a2)
   (if __a2 (setq _a2 __a2)) _a2)
  (:a3
   (&optional __a3)
   (if __a3 (setq _a3 __a3)) _a3)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _valid
    1
    ;; float64 _max_x
    8
    ;; float64 _a0
    8
    ;; float64 _a1
    8
    ;; float64 _a2
    8
    ;; float64 _a3
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;; float64 _max_x
       (sys::poke _max_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a0
       (sys::poke _a0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a1
       (sys::poke _a1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a2
       (sys::poke _a2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a3
       (sys::poke _a3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _max_x
     (setq _max_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a0
     (setq _a0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a1
     (setq _a1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a2
     (setq _a2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a3
     (setq _a3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get kukirun_msgs::PolyFitLane :md5sum-) "c97efd66e05a1d80f9559b23b5c8ff5f")
(setf (get kukirun_msgs::PolyFitLane :datatype-) "kukirun_msgs/PolyFitLane")
(setf (get kukirun_msgs::PolyFitLane :definition-)
      "std_msgs/Header header
bool valid
float64 max_x
float64 a0
float64 a1
float64 a2
float64 a3
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :kukirun_msgs/PolyFitLane "c97efd66e05a1d80f9559b23b5c8ff5f")


