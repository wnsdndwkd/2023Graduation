;; Auto-generated. Do not edit!


(when (boundp 'kukirun_msgs::Turn)
  (if (not (find-package "KUKIRUN_MSGS"))
    (make-package "KUKIRUN_MSGS"))
  (shadow 'Turn (find-package "KUKIRUN_MSGS")))
(unless (find-package "KUKIRUN_MSGS::TURN")
  (make-package "KUKIRUN_MSGS::TURN"))

(in-package "ROS")
;;//! \htmlinclude Turn.msg.html


(defclass kukirun_msgs::Turn
  :super ros::object
  :slots (_exist ))

(defmethod kukirun_msgs::Turn
  (:init
   (&key
    ((:exist __exist) nil)
    )
   (send-super :init)
   (setq _exist __exist)
   self)
  (:exist
   (&optional (__exist :null))
   (if (not (eq __exist :null)) (setq _exist __exist)) _exist)
  (:serialization-length
   ()
   (+
    ;; bool _exist
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _exist
       (if _exist (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _exist
     (setq _exist (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get kukirun_msgs::Turn :md5sum-) "86055aa20f8115cdfd4917a9e28d29bb")
(setf (get kukirun_msgs::Turn :datatype-) "kukirun_msgs/Turn")
(setf (get kukirun_msgs::Turn :definition-)
      "bool exist
")



(provide :kukirun_msgs/Turn "86055aa20f8115cdfd4917a9e28d29bb")


