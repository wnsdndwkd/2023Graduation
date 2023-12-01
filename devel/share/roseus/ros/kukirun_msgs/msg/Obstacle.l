;; Auto-generated. Do not edit!


(when (boundp 'kukirun_msgs::Obstacle)
  (if (not (find-package "KUKIRUN_MSGS"))
    (make-package "KUKIRUN_MSGS"))
  (shadow 'Obstacle (find-package "KUKIRUN_MSGS")))
(unless (find-package "KUKIRUN_MSGS::OBSTACLE")
  (make-package "KUKIRUN_MSGS::OBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude Obstacle.msg.html


(defclass kukirun_msgs::Obstacle
  :super ros::object
  :slots (_x _y _z _radius _velocity ))

(defmethod kukirun_msgs::Obstacle
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:radius __radius) 0.0)
    ((:velocity __velocity) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _radius (float __radius))
   (setq _velocity (float __velocity))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _radius
    4
    ;; float32 _velocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get kukirun_msgs::Obstacle :md5sum-) "931051eedf069559050dad114552e805")
(setf (get kukirun_msgs::Obstacle :datatype-) "kukirun_msgs/Obstacle")
(setf (get kukirun_msgs::Obstacle :definition-)
      "float32 x
float32 y
float32 z
float32 radius
float32 velocity
")



(provide :kukirun_msgs/Obstacle "931051eedf069559050dad114552e805")


