;; Auto-generated. Do not edit!


(when (boundp 'smartcar_control::SetString)
  (if (not (find-package "SMARTCAR_CONTROL"))
    (make-package "SMARTCAR_CONTROL"))
  (shadow 'SetString (find-package "SMARTCAR_CONTROL")))
(unless (find-package "SMARTCAR_CONTROL::SETSTRING")
  (make-package "SMARTCAR_CONTROL::SETSTRING"))
(unless (find-package "SMARTCAR_CONTROL::SETSTRINGREQUEST")
  (make-package "SMARTCAR_CONTROL::SETSTRINGREQUEST"))
(unless (find-package "SMARTCAR_CONTROL::SETSTRINGRESPONSE")
  (make-package "SMARTCAR_CONTROL::SETSTRINGRESPONSE"))

(in-package "ROS")





(defclass smartcar_control::SetStringRequest
  :super ros::object
  :slots (_data ))

(defmethod smartcar_control::SetStringRequest
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass smartcar_control::SetStringResponse
  :super ros::object
  :slots (_success _message ))

(defmethod smartcar_control::SetStringResponse
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

(defclass smartcar_control::SetString
  :super ros::object
  :slots ())

(setf (get smartcar_control::SetString :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get smartcar_control::SetString :datatype-) "smartcar_control/SetString")
(setf (get smartcar_control::SetString :request) smartcar_control::SetStringRequest)
(setf (get smartcar_control::SetString :response) smartcar_control::SetStringResponse)

(defmethod smartcar_control::SetStringRequest
  (:response () (instance smartcar_control::SetStringResponse :init)))

(setf (get smartcar_control::SetStringRequest :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get smartcar_control::SetStringRequest :datatype-) "smartcar_control/SetStringRequest")
(setf (get smartcar_control::SetStringRequest :definition-)
      "string data
---
bool success    # indicate successful run of triggered service
string message  # informational, e.g. for error messages
")

(setf (get smartcar_control::SetStringResponse :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get smartcar_control::SetStringResponse :datatype-) "smartcar_control/SetStringResponse")
(setf (get smartcar_control::SetStringResponse :definition-)
      "string data
---
bool success    # indicate successful run of triggered service
string message  # informational, e.g. for error messages
")



(provide :smartcar_control/SetString "546971982e3fbbd5a41e60fb6432e357")


