;; Auto-generated. Do not edit!


(when (boundp 'kukirun_msgs::TrajectoryPoint)
  (if (not (find-package "KUKIRUN_MSGS"))
    (make-package "KUKIRUN_MSGS"))
  (shadow 'TrajectoryPoint (find-package "KUKIRUN_MSGS")))
(unless (find-package "KUKIRUN_MSGS::TRAJECTORYPOINT")
  (make-package "KUKIRUN_MSGS::TRAJECTORYPOINT"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryPoint.msg.html


(defclass kukirun_msgs::TrajectoryPoint
  :super ros::object
  :slots (_id _x _y _speed _yaw _curvature ))

(defmethod kukirun_msgs::TrajectoryPoint
  (:init
   (&key
    ((:id __id) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:speed __speed) 0.0)
    ((:yaw __yaw) 0.0)
    ((:curvature __curvature) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _speed (float __speed))
   (setq _yaw (float __yaw))
   (setq _curvature (float __curvature))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:curvature
   (&optional __curvature)
   (if __curvature (setq _curvature __curvature)) _curvature)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _speed
    4
    ;; float32 _yaw
    4
    ;; float32 _curvature
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _curvature
       (sys::poke _curvature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _curvature
     (setq _curvature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get kukirun_msgs::TrajectoryPoint :md5sum-) "037d32f18a3262df568e12878396e5f7")
(setf (get kukirun_msgs::TrajectoryPoint :datatype-) "kukirun_msgs/TrajectoryPoint")
(setf (get kukirun_msgs::TrajectoryPoint :definition-)
      "int32 id
float32 x
float32 y
float32 speed
float32 yaw
float32 curvature
")



(provide :kukirun_msgs/TrajectoryPoint "037d32f18a3262df568e12878396e5f7")


