; Auto-generated. Do not edit!


(cl:in-package smartcar_control-msg)


;//! \htmlinclude DriversInput.msg.html

(cl:defclass <DriversInput> (roslisp-msg-protocol:ros-message)
  ((front_left_vel
    :reader front_left_vel
    :initarg :front_left_vel
    :type cl:float
    :initform 0.0)
   (front_right_vel
    :reader front_right_vel
    :initarg :front_right_vel
    :type cl:float
    :initform 0.0)
   (rear_left_vel
    :reader rear_left_vel
    :initarg :rear_left_vel
    :type cl:float
    :initform 0.0)
   (rear_right_vel
    :reader rear_right_vel
    :initarg :rear_right_vel
    :type cl:float
    :initform 0.0)
   (front_left_angle
    :reader front_left_angle
    :initarg :front_left_angle
    :type cl:float
    :initform 0.0)
   (front_right_angle
    :reader front_right_angle
    :initarg :front_right_angle
    :type cl:float
    :initform 0.0)
   (rear_left_angle
    :reader rear_left_angle
    :initarg :rear_left_angle
    :type cl:float
    :initform 0.0)
   (rear_right_angle
    :reader rear_right_angle
    :initarg :rear_right_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass DriversInput (<DriversInput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriversInput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriversInput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smartcar_control-msg:<DriversInput> is deprecated: use smartcar_control-msg:DriversInput instead.")))

(cl:ensure-generic-function 'front_left_vel-val :lambda-list '(m))
(cl:defmethod front_left_vel-val ((m <DriversInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smartcar_control-msg:front_left_vel-val is deprecated.  Use smartcar_control-msg:front_left_vel instead.")
  (front_left_vel m))

(cl:ensure-generic-function 'front_right_vel-val :lambda-list '(m))
(cl:defmethod front_right_vel-val ((m <DriversInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smartcar_control-msg:front_right_vel-val is deprecated.  Use smartcar_control-msg:front_right_vel instead.")
  (front_right_vel m))

(cl:ensure-generic-function 'rear_left_vel-val :lambda-list '(m))
(cl:defmethod rear_left_vel-val ((m <DriversInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smartcar_control-msg:rear_left_vel-val is deprecated.  Use smartcar_control-msg:rear_left_vel instead.")
  (rear_left_vel m))

(cl:ensure-generic-function 'rear_right_vel-val :lambda-list '(m))
(cl:defmethod rear_right_vel-val ((m <DriversInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smartcar_control-msg:rear_right_vel-val is deprecated.  Use smartcar_control-msg:rear_right_vel instead.")
  (rear_right_vel m))

(cl:ensure-generic-function 'front_left_angle-val :lambda-list '(m))
(cl:defmethod front_left_angle-val ((m <DriversInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smartcar_control-msg:front_left_angle-val is deprecated.  Use smartcar_control-msg:front_left_angle instead.")
  (front_left_angle m))

(cl:ensure-generic-function 'front_right_angle-val :lambda-list '(m))
(cl:defmethod front_right_angle-val ((m <DriversInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smartcar_control-msg:front_right_angle-val is deprecated.  Use smartcar_control-msg:front_right_angle instead.")
  (front_right_angle m))

(cl:ensure-generic-function 'rear_left_angle-val :lambda-list '(m))
(cl:defmethod rear_left_angle-val ((m <DriversInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smartcar_control-msg:rear_left_angle-val is deprecated.  Use smartcar_control-msg:rear_left_angle instead.")
  (rear_left_angle m))

(cl:ensure-generic-function 'rear_right_angle-val :lambda-list '(m))
(cl:defmethod rear_right_angle-val ((m <DriversInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smartcar_control-msg:rear_right_angle-val is deprecated.  Use smartcar_control-msg:rear_right_angle instead.")
  (rear_right_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriversInput>) ostream)
  "Serializes a message object of type '<DriversInput>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front_left_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front_right_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rear_left_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rear_right_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front_left_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front_right_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rear_left_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rear_right_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriversInput>) istream)
  "Deserializes a message object of type '<DriversInput>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_left_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_right_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_left_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_right_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_left_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_right_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_left_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_right_angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriversInput>)))
  "Returns string type for a message object of type '<DriversInput>"
  "smartcar_control/DriversInput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriversInput)))
  "Returns string type for a message object of type 'DriversInput"
  "smartcar_control/DriversInput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriversInput>)))
  "Returns md5sum for a message object of type '<DriversInput>"
  "0abe91c43e477d202ad7b132d7fe2c7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriversInput)))
  "Returns md5sum for a message object of type 'DriversInput"
  "0abe91c43e477d202ad7b132d7fe2c7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriversInput>)))
  "Returns full string definition for message of type '<DriversInput>"
  (cl:format cl:nil "float32 front_left_vel~%float32 front_right_vel~%float32 rear_left_vel~%float32 rear_right_vel~%float32 front_left_angle~%float32 front_right_angle~%float32 rear_left_angle~%float32 rear_right_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriversInput)))
  "Returns full string definition for message of type 'DriversInput"
  (cl:format cl:nil "float32 front_left_vel~%float32 front_right_vel~%float32 rear_left_vel~%float32 rear_right_vel~%float32 front_left_angle~%float32 front_right_angle~%float32 rear_left_angle~%float32 rear_right_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriversInput>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriversInput>))
  "Converts a ROS message object to a list"
  (cl:list 'DriversInput
    (cl:cons ':front_left_vel (front_left_vel msg))
    (cl:cons ':front_right_vel (front_right_vel msg))
    (cl:cons ':rear_left_vel (rear_left_vel msg))
    (cl:cons ':rear_right_vel (rear_right_vel msg))
    (cl:cons ':front_left_angle (front_left_angle msg))
    (cl:cons ':front_right_angle (front_right_angle msg))
    (cl:cons ':rear_left_angle (rear_left_angle msg))
    (cl:cons ':rear_right_angle (rear_right_angle msg))
))
