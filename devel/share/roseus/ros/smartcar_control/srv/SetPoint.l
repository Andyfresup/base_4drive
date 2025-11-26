;; Auto-generated. Do not edit!


(when (boundp 'smartcar_control::SetPoint)
  (if (not (find-package "SMARTCAR_CONTROL"))
    (make-package "SMARTCAR_CONTROL"))
  (shadow 'SetPoint (find-package "SMARTCAR_CONTROL")))
(unless (find-package "SMARTCAR_CONTROL::SETPOINT")
  (make-package "SMARTCAR_CONTROL::SETPOINT"))
(unless (find-package "SMARTCAR_CONTROL::SETPOINTREQUEST")
  (make-package "SMARTCAR_CONTROL::SETPOINTREQUEST"))
(unless (find-package "SMARTCAR_CONTROL::SETPOINTRESPONSE")
  (make-package "SMARTCAR_CONTROL::SETPOINTRESPONSE"))

(in-package "ROS")





(defclass smartcar_control::SetPointRequest
  :super ros::object
  :slots (_x _y ))

(defmethod smartcar_control::SetPointRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass smartcar_control::SetPointResponse
  :super ros::object
  :slots (_success _message ))

(defmethod smartcar_control::SetPointResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass smartcar_control::SetPoint
  :super ros::object
  :slots ())

(setf (get smartcar_control::SetPoint :md5sum-) "3374a123f3f3fd3591258738a2b4096b")
(setf (get smartcar_control::SetPoint :datatype-) "smartcar_control/SetPoint")
(setf (get smartcar_control::SetPoint :request) smartcar_control::SetPointRequest)
(setf (get smartcar_control::SetPoint :response) smartcar_control::SetPointResponse)

(defmethod smartcar_control::SetPointRequest
  (:response () (instance smartcar_control::SetPointResponse :init)))

(setf (get smartcar_control::SetPointRequest :md5sum-) "3374a123f3f3fd3591258738a2b4096b")
(setf (get smartcar_control::SetPointRequest :datatype-) "smartcar_control/SetPointRequest")
(setf (get smartcar_control::SetPointRequest :definition-)
      "float32 x
float32 y
---
bool success    # indicate successful run of triggered service
string message  # informational, e.g. for error messages
")

(setf (get smartcar_control::SetPointResponse :md5sum-) "3374a123f3f3fd3591258738a2b4096b")
(setf (get smartcar_control::SetPointResponse :datatype-) "smartcar_control/SetPointResponse")
(setf (get smartcar_control::SetPointResponse :definition-)
      "float32 x
float32 y
---
bool success    # indicate successful run of triggered service
string message  # informational, e.g. for error messages
")



(provide :smartcar_control/SetPoint "3374a123f3f3fd3591258738a2b4096b")


