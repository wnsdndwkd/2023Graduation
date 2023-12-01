;; Auto-generated. Do not edit!


(when (boundp 'kukirun_msgs::Trajectory)
  (if (not (find-package "KUKIRUN_MSGS"))
    (make-package "KUKIRUN_MSGS"))
  (shadow 'Trajectory (find-package "KUKIRUN_MSGS")))
(unless (find-package "KUKIRUN_MSGS::TRAJECTORY")
  (make-package "KUKIRUN_MSGS::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude Trajectory.msg.html


(defclass kukirun_msgs::Trajectory
  :super ros::object
  :slots (_valid _points ))

(defmethod kukirun_msgs::Trajectory
  (:init
   (&key
    ((:valid __valid) nil)
    ((:points __points) ())
    )
   (send-super :init)
   (setq _valid __valid)
   (setq _points __points)
   self)
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; bool _valid
    1
    ;; kukirun_msgs/TrajectoryPoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;; kukirun_msgs/TrajectoryPoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; kukirun_msgs/TrajectoryPoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance kukirun_msgs::TrajectoryPoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get kukirun_msgs::Trajectory :md5sum-) "4ec8a1e337a33f6114ce23821c0c50bd")
(setf (get kukirun_msgs::Trajectory :datatype-) "kukirun_msgs/Trajectory")
(setf (get kukirun_msgs::Trajectory :definition-)
      "bool valid
kukirun_msgs/TrajectoryPoint[] points
================================================================================
MSG: kukirun_msgs/TrajectoryPoint
int32 id
float32 x
float32 y
float32 speed
float32 yaw
float32 curvature
")



(provide :kukirun_msgs/Trajectory "4ec8a1e337a33f6114ce23821c0c50bd")


