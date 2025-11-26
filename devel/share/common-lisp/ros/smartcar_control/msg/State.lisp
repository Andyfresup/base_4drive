; Auto-generated. Do not edit!


(cl:in-package smartcar_control-msg)


;//! \htmlinclude State.msg.html

(cl:defclass <State> (roslisp-msg-protocol:ros-message)
  ((code
    :reader code
    :initarg :code
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass State (<State>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <State>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'State)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smartcar_control-msg:<State> is deprecated: use smartcar_control-msg:State instead.")))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smartcar_control-msg:code-val is deprecated.  Use smartcar_control-msg:code instead.")
  (code m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smartcar_control-msg:name-val is deprecated.  Use smartcar_control-msg:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <State>) ostream)
  "Serializes a message object of type '<State>"
  (cl:let* ((signed (cl:slot-value msg 'code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <State>) istream)
  "Deserializes a message object of type '<State>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<State>)))
  "Returns string type for a message object of type '<State>"
  "smartcar_control/State")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'State)))
  "Returns string type for a message object of type 'State"
  "smartcar_control/State")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<State>)))
  "Returns md5sum for a message object of type '<State>"
  "6945e95f8a0c81d7c5ff2efa0627e942")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'State)))
  "Returns md5sum for a message object of type 'State"
  "6945e95f8a0c81d7c5ff2efa0627e942")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<State>)))
  "Returns full string definition for message of type '<State>"
  (cl:format cl:nil "int32 code~%string name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'State)))
  "Returns full string definition for message of type 'State"
  (cl:format cl:nil "int32 code~%string name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <State>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <State>))
  "Converts a ROS message object to a list"
  (cl:list 'State
    (cl:cons ':code (code msg))
    (cl:cons ':name (name msg))
))
