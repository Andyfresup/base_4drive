;; Auto-generated. Do not edit!


(when (boundp 'smartcar_control::SetInt)
  (if (not (find-package "SMARTCAR_CONTROL"))
    (make-package "SMARTCAR_CONTROL"))
  (shadow 'SetInt (find-package "SMARTCAR_CONTROL")))
(unless (find-package "SMARTCAR_CONTROL::SETINT")
  (make-package "SMARTCAR_CONTROL::SETINT"))
(unless (find-package "SMARTCAR_CONTROL::SETINTREQUEST")
  (make-package "SMARTCAR_CONTROL::SETINTREQUEST"))
(unless (find-package "SMARTCAR_CONTROL::SETINTRESPONSE")
  (make-package "SMARTCAR_CONTROL::SETINTRESPONSE"))

(in-package "ROS")





(defclass smartcar_control::SetIntRequest
  :super ros::object
  :slots (_data ))

(defmethod smartcar_control::SetIntRequest
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass smartcar_control::SetIntResponse
  :super ros::object
  :slots (_success _message ))

(defmethod smartcar_control::SetIntResponse
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

(defclass smartcar_control::SetInt
  :super ros::object
  :slots ())

(setf (get smartcar_control::SetInt :md5sum-) "41a6318c88ca9d75d7a585e2aa4ca6ea")
(setf (get smartcar_control::SetInt :datatype-) "smartcar_control/SetInt")
(setf (get smartcar_control::SetInt :request) smartcar_control::SetIntRequest)
(setf (get smartcar_control::SetInt :response) smartcar_control::SetIntResponse)

(defmethod smartcar_control::SetIntRequest
  (:response () (instance smartcar_control::SetIntResponse :init)))

(setf (get smartcar_control::SetIntRequest :md5sum-) "41a6318c88ca9d75d7a585e2aa4ca6ea")
(setf (get smartcar_control::SetIntRequest :datatype-) "smartcar_control/SetIntRequest")
(setf (get smartcar_control::SetIntRequest :definition-)
      "int32 data
---
bool success    # indicate successful run of triggered service
string message  # informational, e.g. for error messages
")

(setf (get smartcar_control::SetIntResponse :md5sum-) "41a6318c88ca9d75d7a585e2aa4ca6ea")
(setf (get smartcar_control::SetIntResponse :datatype-) "smartcar_control/SetIntResponse")
(setf (get smartcar_control::SetIntResponse :definition-)
      "int32 data
---
bool success    # indicate successful run of triggered service
string message  # informational, e.g. for error messages
")



(provide :smartcar_control/SetInt "41a6318c88ca9d75d7a585e2aa4ca6ea")


