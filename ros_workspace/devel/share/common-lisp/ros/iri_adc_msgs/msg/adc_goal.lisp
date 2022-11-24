; Auto-generated. Do not edit!


(cl:in-package iri_adc_msgs-msg)


;//! \htmlinclude adc_goal.msg.html

(cl:defclass <adc_goal> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0))
)

(cl:defclass adc_goal (<adc_goal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <adc_goal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'adc_goal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-msg:<adc_goal> is deprecated: use iri_adc_msgs-msg:adc_goal instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <adc_goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-msg:id-val is deprecated.  Use iri_adc_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <adc_goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-msg:x-val is deprecated.  Use iri_adc_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <adc_goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-msg:y-val is deprecated.  Use iri_adc_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <adc_goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-msg:yaw-val is deprecated.  Use iri_adc_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <adc_goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-msg:type-val is deprecated.  Use iri_adc_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<adc_goal>)))
    "Constants for message type '<adc_goal>"
  '((:PASSTHROUGH_GOAL . 0)
    (:STOP_GOAL . 1)
    (:PARKING_GOAL . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'adc_goal)))
    "Constants for message type 'adc_goal"
  '((:PASSTHROUGH_GOAL . 0)
    (:STOP_GOAL . 1)
    (:PARKING_GOAL . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <adc_goal>) ostream)
  "Serializes a message object of type '<adc_goal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <adc_goal>) istream)
  "Deserializes a message object of type '<adc_goal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<adc_goal>)))
  "Returns string type for a message object of type '<adc_goal>"
  "iri_adc_msgs/adc_goal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'adc_goal)))
  "Returns string type for a message object of type 'adc_goal"
  "iri_adc_msgs/adc_goal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<adc_goal>)))
  "Returns md5sum for a message object of type '<adc_goal>"
  "997a694e5c5bce1148d1ef6403aee244")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'adc_goal)))
  "Returns md5sum for a message object of type 'adc_goal"
  "997a694e5c5bce1148d1ef6403aee244")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<adc_goal>)))
  "Returns full string definition for message of type '<adc_goal>"
  (cl:format cl:nil "#type definitions~%uint8 PASSTHROUGH_GOAL=0~%uint8 STOP_GOAL=1~%uint8 PARKING_GOAL=2~%~%string id       # goal identifier~%float32 x       # x coordinates in meters [m]~%float32 y       # y coordinate in meters [m]~%float32 yaw     # yaw orientation in radians [rad]~%int32 type      # see type definitions above~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'adc_goal)))
  "Returns full string definition for message of type 'adc_goal"
  (cl:format cl:nil "#type definitions~%uint8 PASSTHROUGH_GOAL=0~%uint8 STOP_GOAL=1~%uint8 PARKING_GOAL=2~%~%string id       # goal identifier~%float32 x       # x coordinates in meters [m]~%float32 y       # y coordinate in meters [m]~%float32 yaw     # yaw orientation in radians [rad]~%int32 type      # see type definitions above~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <adc_goal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <adc_goal>))
  "Converts a ROS message object to a list"
  (cl:list 'adc_goal
    (cl:cons ':id (id msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':type (type msg))
))
