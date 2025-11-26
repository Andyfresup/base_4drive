;; Auto-generated. Do not edit!


(when (boundp 'smartcar_control::State)
  (if (not (find-package "SMARTCAR_CONTROL"))
    (make-package "SMARTCAR_CONTROL"))
  (shadow 'State (find-package "SMARTCAR_CONTROL")))
(unless (find-package "SMARTCAR_CONTROL::STATE")
  (make-package "SMARTCAR_CONTROL::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html


(defclass smartcar_control::State
  :super ros::object
  :slots (_code _name ))

(defmethod smartcar_control::State
  (:init
   (&key
    ((:code __code) 0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _code (round __code))
   (setq _name (string __name))
   self)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; int32 _code
    4
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _code
       (write-long _code s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _code
     (setq _code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get smartcar_control::State :md5sum-) "6945e95f8a0c81d7c5ff2efa0627e942")
(setf (get smartcar_control::State :datatype-) "smartcar_control/State")
(setf (get smartcar_control::State :definition-)
      "int32 code
string name
")



(provide :smartcar_control/State "6945e95f8a0c81d7c5ff2efa0627e942")


