;; Auto-generated. Do not edit!


(when (boundp 'kukirun_msgs::Obstacles)
  (if (not (find-package "KUKIRUN_MSGS"))
    (make-package "KUKIRUN_MSGS"))
  (shadow 'Obstacles (find-package "KUKIRUN_MSGS")))
(unless (find-package "KUKIRUN_MSGS::OBSTACLES")
  (make-package "KUKIRUN_MSGS::OBSTACLES"))

(in-package "ROS")
;;//! \htmlinclude Obstacles.msg.html


(defclass kukirun_msgs::Obstacles
  :super ros::object
  :slots (_obstacles ))

(defmethod kukirun_msgs::Obstacles
  (:init
   (&key
    ((:obstacles __obstacles) ())
    )
   (send-super :init)
   (setq _obstacles __obstacles)
   self)
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:serialization-length
   ()
   (+
    ;; kukirun_msgs/Obstacle[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; kukirun_msgs/Obstacle[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; kukirun_msgs/Obstacle[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance kukirun_msgs::Obstacle :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get kukirun_msgs::Obstacles :md5sum-) "04e65738e06f419f276514823cafe660")
(setf (get kukirun_msgs::Obstacles :datatype-) "kukirun_msgs/Obstacles")
(setf (get kukirun_msgs::Obstacles :definition-)
      "kukirun_msgs/Obstacle[] obstacles
================================================================================
MSG: kukirun_msgs/Obstacle
float32 x
float32 y
float32 z
float32 radius
float32 velocity
")



(provide :kukirun_msgs/Obstacles "04e65738e06f419f276514823cafe660")


