;; Auto-generated. Do not edit!


(when (boundp 'smartcar_control::SetFloat)
  (if (not (find-package "SMARTCAR_CONTROL"))
    (make-package "SMARTCAR_CONTROL"))
  (shadow 'SetFloat (find-package "SMARTCAR_CONTROL")))
(unless (find-package "SMARTCAR_CONTROL::SETFLOAT")
  (make-package "SMARTCAR_CONTROL::SETFLOAT"))
(unless (find-package "SMARTCAR_CONTROL::SETFLOATREQUEST")
  (make-package "SMARTCAR_CONTROL::SETFLOATREQUEST"))
(unless (find-package "SMARTCAR_CONTROL::SETFLOATRESPONSE")
  (make-package "SMARTCAR_CONTROL::SETFLOATRESPONSE"))

(in-package "ROS")





(defclass smartcar_control::SetFloatRequest
  :super ros::object
  :slots (_data ))

(defmethod smartcar_control::SetFloatRequest
  (:init
   (&key
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _data (float __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float64 _data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _data
       (sys::poke _data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _data
     (setq _data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass smartcar_control::SetFloatResponse
  :super ros::object
  :slots (_success _message ))

(defmethod smartcar_control::SetFloatResponse
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

(defclass smartcar_control::SetFloat
  :super ros::object
  :slots ())

(setf (get smartcar_control::SetFloat :md5sum-) "3f47c51e9da05852f0d7f484f9279955")
(setf (get smartcar_control::SetFloat :datatype-) "smartcar_control/SetFloat")
(setf (get smartcar_control::SetFloat :request) smartcar_control::SetFloatRequest)
(setf (get smartcar_control::SetFloat :response) smartcar_control::SetFloatResponse)

(defmethod smartcar_control::SetFloatRequest
  (:response () (instance smartcar_control::SetFloatResponse :init)))

(setf (get smartcar_control::SetFloatRequest :md5sum-) "3f47c51e9da05852f0d7f484f9279955")
(setf (get smartcar_control::SetFloatRequest :datatype-) "smartcar_control/SetFloatRequest")
(setf (get smartcar_control::SetFloatRequest :definition-)
      "float64 data
---
bool success    # indicate successful run of triggered service
string message  # informational, e.g. for error messages

")

(setf (get smartcar_control::SetFloatResponse :md5sum-) "3f47c51e9da05852f0d7f484f9279955")
(setf (get smartcar_control::SetFloatResponse :datatype-) "smartcar_control/SetFloatResponse")
(setf (get smartcar_control::SetFloatResponse :definition-)
      "float64 data
---
bool success    # indicate successful run of triggered service
string message  # informational, e.g. for error messages

")



(provide :smartcar_control/SetFloat "3f47c51e9da05852f0d7f484f9279955")


