;; Auto-generated. Do not edit!


(when (boundp 'smartcar_control::DriversInput)
  (if (not (find-package "SMARTCAR_CONTROL"))
    (make-package "SMARTCAR_CONTROL"))
  (shadow 'DriversInput (find-package "SMARTCAR_CONTROL")))
(unless (find-package "SMARTCAR_CONTROL::DRIVERSINPUT")
  (make-package "SMARTCAR_CONTROL::DRIVERSINPUT"))

(in-package "ROS")
;;//! \htmlinclude DriversInput.msg.html


(defclass smartcar_control::DriversInput
  :super ros::object
  :slots (_front_left_vel _front_right_vel _rear_left_vel _rear_right_vel _front_left_angle _front_right_angle _rear_left_angle _rear_right_angle ))

(defmethod smartcar_control::DriversInput
  (:init
   (&key
    ((:front_left_vel __front_left_vel) 0.0)
    ((:front_right_vel __front_right_vel) 0.0)
    ((:rear_left_vel __rear_left_vel) 0.0)
    ((:rear_right_vel __rear_right_vel) 0.0)
    ((:front_left_angle __front_left_angle) 0.0)
    ((:front_right_angle __front_right_angle) 0.0)
    ((:rear_left_angle __rear_left_angle) 0.0)
    ((:rear_right_angle __rear_right_angle) 0.0)
    )
   (send-super :init)
   (setq _front_left_vel (float __front_left_vel))
   (setq _front_right_vel (float __front_right_vel))
   (setq _rear_left_vel (float __rear_left_vel))
   (setq _rear_right_vel (float __rear_right_vel))
   (setq _front_left_angle (float __front_left_angle))
   (setq _front_right_angle (float __front_right_angle))
   (setq _rear_left_angle (float __rear_left_angle))
   (setq _rear_right_angle (float __rear_right_angle))
   self)
  (:front_left_vel
   (&optional __front_left_vel)
   (if __front_left_vel (setq _front_left_vel __front_left_vel)) _front_left_vel)
  (:front_right_vel
   (&optional __front_right_vel)
   (if __front_right_vel (setq _front_right_vel __front_right_vel)) _front_right_vel)
  (:rear_left_vel
   (&optional __rear_left_vel)
   (if __rear_left_vel (setq _rear_left_vel __rear_left_vel)) _rear_left_vel)
  (:rear_right_vel
   (&optional __rear_right_vel)
   (if __rear_right_vel (setq _rear_right_vel __rear_right_vel)) _rear_right_vel)
  (:front_left_angle
   (&optional __front_left_angle)
   (if __front_left_angle (setq _front_left_angle __front_left_angle)) _front_left_angle)
  (:front_right_angle
   (&optional __front_right_angle)
   (if __front_right_angle (setq _front_right_angle __front_right_angle)) _front_right_angle)
  (:rear_left_angle
   (&optional __rear_left_angle)
   (if __rear_left_angle (setq _rear_left_angle __rear_left_angle)) _rear_left_angle)
  (:rear_right_angle
   (&optional __rear_right_angle)
   (if __rear_right_angle (setq _rear_right_angle __rear_right_angle)) _rear_right_angle)
  (:serialization-length
   ()
   (+
    ;; float32 _front_left_vel
    4
    ;; float32 _front_right_vel
    4
    ;; float32 _rear_left_vel
    4
    ;; float32 _rear_right_vel
    4
    ;; float32 _front_left_angle
    4
    ;; float32 _front_right_angle
    4
    ;; float32 _rear_left_angle
    4
    ;; float32 _rear_right_angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _front_left_vel
       (sys::poke _front_left_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _front_right_vel
       (sys::poke _front_right_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_left_vel
       (sys::poke _rear_left_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_right_vel
       (sys::poke _rear_right_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _front_left_angle
       (sys::poke _front_left_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _front_right_angle
       (sys::poke _front_right_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_left_angle
       (sys::poke _rear_left_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_right_angle
       (sys::poke _rear_right_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _front_left_vel
     (setq _front_left_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _front_right_vel
     (setq _front_right_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_left_vel
     (setq _rear_left_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_right_vel
     (setq _rear_right_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _front_left_angle
     (setq _front_left_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _front_right_angle
     (setq _front_right_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_left_angle
     (setq _rear_left_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_right_angle
     (setq _rear_right_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get smartcar_control::DriversInput :md5sum-) "0abe91c43e477d202ad7b132d7fe2c7e")
(setf (get smartcar_control::DriversInput :datatype-) "smartcar_control/DriversInput")
(setf (get smartcar_control::DriversInput :definition-)
      "float32 front_left_vel
float32 front_right_vel
float32 rear_left_vel
float32 rear_right_vel
float32 front_left_angle
float32 front_right_angle
float32 rear_left_angle
float32 rear_right_angle

")



(provide :smartcar_control/DriversInput "0abe91c43e477d202ad7b132d7fe2c7e")


