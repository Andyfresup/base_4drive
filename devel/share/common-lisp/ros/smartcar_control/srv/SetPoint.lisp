; Auto-generated. Do not edit!


(cl:in-package smartcar_control-srv)


;//! \htmlinclude SetPoint-request.msg.html

(cl:defclass <SetPoint-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetPoint-request (<SetPoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smartcar_control-srv:<SetPoint-request> is deprecated: use smartcar_control-srv:SetPoint-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <SetPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smartcar_control-srv:x-val is deprecated.  Use smartcar_control-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <SetPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smartcar_control-srv:y-val is deprecated.  Use smartcar_control-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPoint-request>) ostream)
  "Serializes a message object of type '<SetPoint-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPoint-request>) istream)
  "Deserializes a message object of type '<SetPoint-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPoint-request>)))
  "Returns string type for a service object of type '<SetPoint-request>"
  "smartcar_control/SetPointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPoint-request)))
  "Returns string type for a service object of type 'SetPoint-request"
  "smartcar_control/SetPointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPoint-request>)))
  "Returns md5sum for a message object of type '<SetPoint-request>"
  "3374a123f3f3fd3591258738a2b4096b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPoint-request)))
  "Returns md5sum for a message object of type 'SetPoint-request"
  "3374a123f3f3fd3591258738a2b4096b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPoint-request>)))
  "Returns full string definition for message of type '<SetPoint-request>"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPoint-request)))
  "Returns full string definition for message of type 'SetPoint-request"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPoint-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPoint-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude SetPoint-response.msg.html

(cl:defclass <SetPoint-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetPoint-response (<SetPoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smartcar_control-srv:<SetPoint-response> is deprecated: use smartcar_control-srv:SetPoint-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smartcar_control-srv:success-val is deprecated.  Use smartcar_control-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smartcar_control-srv:message-val is deprecated.  Use smartcar_control-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPoint-response>) ostream)
  "Serializes a message object of type '<SetPoint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPoint-response>) istream)
  "Deserializes a message object of type '<SetPoint-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPoint-response>)))
  "Returns string type for a service object of type '<SetPoint-response>"
  "smartcar_control/SetPointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPoint-response)))
  "Returns string type for a service object of type 'SetPoint-response"
  "smartcar_control/SetPointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPoint-response>)))
  "Returns md5sum for a message object of type '<SetPoint-response>"
  "3374a123f3f3fd3591258738a2b4096b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPoint-response)))
  "Returns md5sum for a message object of type 'SetPoint-response"
  "3374a123f3f3fd3591258738a2b4096b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPoint-response>)))
  "Returns full string definition for message of type '<SetPoint-response>"
  (cl:format cl:nil "bool success    # indicate successful run of triggered service~%string message  # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPoint-response)))
  "Returns full string definition for message of type 'SetPoint-response"
  (cl:format cl:nil "bool success    # indicate successful run of triggered service~%string message  # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPoint-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPoint-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPoint)))
  'SetPoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPoint)))
  'SetPoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPoint)))
  "Returns string type for a service object of type '<SetPoint>"
  "smartcar_control/SetPoint")