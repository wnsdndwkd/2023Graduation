;; Auto-generated. Do not edit!


(when (boundp 'kukirun_msgs::Traffic)
  (if (not (find-package "KUKIRUN_MSGS"))
    (make-package "KUKIRUN_MSGS"))
  (shadow 'Traffic (find-package "KUKIRUN_MSGS")))
(unless (find-package "KUKIRUN_MSGS::TRAFFIC")
  (make-package "KUKIRUN_MSGS::TRAFFIC"))

(in-package "ROS")
;;//! \htmlinclude Traffic.msg.html


(defclass kukirun_msgs::Traffic
  :super ros::object
  :slots (_trafficsign _trafficsign_1 _trafficsign_2 _trafficsign_3 ))

(defmethod kukirun_msgs::Traffic
  (:init
   (&key
    ((:trafficsign __trafficsign) 0)
    ((:trafficsign_1 __trafficsign_1) 0)
    ((:trafficsign_2 __trafficsign_2) 0)
    ((:trafficsign_3 __trafficsign_3) 0)
    )
   (send-super :init)
   (setq _trafficsign (round __trafficsign))
   (setq _trafficsign_1 (round __trafficsign_1))
   (setq _trafficsign_2 (round __trafficsign_2))
   (setq _trafficsign_3 (round __trafficsign_3))
   self)
  (:trafficsign
   (&optional __trafficsign)
   (if __trafficsign (setq _trafficsign __trafficsign)) _trafficsign)
  (:trafficsign_1
   (&optional __trafficsign_1)
   (if __trafficsign_1 (setq _trafficsign_1 __trafficsign_1)) _trafficsign_1)
  (:trafficsign_2
   (&optional __trafficsign_2)
   (if __trafficsign_2 (setq _trafficsign_2 __trafficsign_2)) _trafficsign_2)
  (:trafficsign_3
   (&optional __trafficsign_3)
   (if __trafficsign_3 (setq _trafficsign_3 __trafficsign_3)) _trafficsign_3)
  (:serialization-length
   ()
   (+
    ;; int32 _trafficsign
    4
    ;; int32 _trafficsign_1
    4
    ;; int32 _trafficsign_2
    4
    ;; int32 _trafficsign_3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _trafficsign
       (write-long _trafficsign s)
     ;; int32 _trafficsign_1
       (write-long _trafficsign_1 s)
     ;; int32 _trafficsign_2
       (write-long _trafficsign_2 s)
     ;; int32 _trafficsign_3
       (write-long _trafficsign_3 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _trafficsign
     (setq _trafficsign (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _trafficsign_1
     (setq _trafficsign_1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _trafficsign_2
     (setq _trafficsign_2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _trafficsign_3
     (setq _trafficsign_3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get kukirun_msgs::Traffic :md5sum-) "c68a17eb503576fe17e72e4e585ded61")
(setf (get kukirun_msgs::Traffic :datatype-) "kukirun_msgs/Traffic")
(setf (get kukirun_msgs::Traffic :definition-)
      "int32 trafficsign
int32 trafficsign_1
int32 trafficsign_2
int32 trafficsign_3
")



(provide :kukirun_msgs/Traffic "c68a17eb503576fe17e72e4e585ded61")


