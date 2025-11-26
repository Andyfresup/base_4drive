; Auto-generated. Do not edit!


(cl:in-package smartcar_control-msg)


;//! \htmlinclude VelInput.msg.html

(cl:defclass <VelInput> (roslisp-msg-protocol:ros-message)
  ((linear_vel
    :reader linear_vel
    :initarg :linear_vel
    :type cl:float
    :initform 0.0)
   (angular_vel
    :reader angular_vel
    :initarg :angular_vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass VelInput (<VelInput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelInput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelInput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smartcar_control-msg:<VelInput> is deprecated: use smartcar_control-msg:VelInput instead.")))

(cl:ensure-generic-function 'linear_vel-val :lambda-list '(m))
(cl:defmethod linear_vel-val ((m <VelInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smartcar_control-msg:linear_vel-val is deprecated.  Use smartcar_control-msg:linear_vel instead.")
  (linear_vel m))

(cl:ensure-generic-function 'angular_vel-val :lambda-list '(m))
(cl:defmethod angular_vel-val ((m <VelInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smartcar_control-msg:angular_vel-val is deprecated.  Use smartcar_control-msg:angular_vel instead.")
  (angular_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelInput>) ostream)
  "Serializes a message object of type '<VelInput>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelInput>) istream)
  "Deserializes a message object of type '<VelInput>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_vel) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelInput>)))
  "Returns string type for a message object of type '<VelInput>"
  "smartcar_control/VelInput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelInput)))
  "Returns string type for a message object of type 'VelInput"
  "smartcar_control/VelInput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelInput>)))
  "Returns md5sum for a message object of type '<VelInput>"
  "4798be5c355a1844fc4eb8549a932b03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelInput)))
  "Returns md5sum for a message object of type 'VelInput"
  "4798be5c355a1844fc4eb8549a932b03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelInput>)))
  "Returns full string definition for message of type '<VelInput>"
  (cl:format cl:nil "float32 linear_vel~%float32 angular_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelInput)))
  "Returns full string definition for message of type 'VelInput"
  (cl:format cl:nil "float32 linear_vel~%float32 angular_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelInput>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelInput>))
  "Converts a ROS message object to a list"
  (cl:list 'VelInput
    (cl:cons ':linear_vel (linear_vel msg))
    (cl:cons ':angular_vel (angular_vel msg))
))
