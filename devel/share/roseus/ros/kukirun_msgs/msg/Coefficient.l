;; Auto-generated. Do not edit!


(when (boundp 'kukirun_msgs::Coefficient)
  (if (not (find-package "KUKIRUN_MSGS"))
    (make-package "KUKIRUN_MSGS"))
  (shadow 'Coefficient (find-package "KUKIRUN_MSGS")))
(unless (find-package "KUKIRUN_MSGS::COEFFICIENT")
  (make-package "KUKIRUN_MSGS::COEFFICIENT"))

(in-package "ROS")
;;//! \htmlinclude Coefficient.msg.html


(defclass kukirun_msgs::Coefficient
  :super ros::object
  :slots (_a0 _a1 _a2 _a3 ))

(defmethod kukirun_msgs::Coefficient
  (:init
   (&key
    ((:a0 __a0) 0.0)
    ((:a1 __a1) 0.0)
    ((:a2 __a2) 0.0)
    ((:a3 __a3) 0.0)
    )
   (send-super :init)
   (setq _a0 (float __a0))
   (setq _a1 (float __a1))
   (setq _a2 (float __a2))
   (setq _a3 (float __a3))
   self)
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
    ;; float32 _a0
    4
    ;; float32 _a1
    4
    ;; float32 _a2
    4
    ;; float32 _a3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _a0
       (sys::poke _a0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a1
       (sys::poke _a1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a2
       (sys::poke _a2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a3
       (sys::poke _a3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _a0
     (setq _a0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a1
     (setq _a1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a2
     (setq _a2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a3
     (setq _a3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get kukirun_msgs::Coefficient :md5sum-) "02922718d211cab15568610aec8c412d")
(setf (get kukirun_msgs::Coefficient :datatype-) "kukirun_msgs/Coefficient")
(setf (get kukirun_msgs::Coefficient :definition-)
      "float32 a0
float32 a1
float32 a2
float32 a3
")



(provide :kukirun_msgs/Coefficient "02922718d211cab15568610aec8c412d")


