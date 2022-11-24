; Auto-generated. Do not edit!


(cl:in-package iri_model_car_msgs-msg)


;//! \htmlinclude encoders.msg.html

(cl:defclass <encoders> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left_ticks
    :reader left_ticks
    :initarg :left_ticks
    :type cl:integer
    :initform 0)
   (left_forward
    :reader left_forward
    :initarg :left_forward
    :type cl:boolean
    :initform cl:nil)
   (right_ticks
    :reader right_ticks
    :initarg :right_ticks
    :type cl:integer
    :initform 0)
   (right_forward
    :reader right_forward
    :initarg :right_forward
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass encoders (<encoders>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <encoders>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'encoders)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_model_car_msgs-msg:<encoders> is deprecated: use iri_model_car_msgs-msg:encoders instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <encoders>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_model_car_msgs-msg:header-val is deprecated.  Use iri_model_car_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'left_ticks-val :lambda-list '(m))
(cl:defmethod left_ticks-val ((m <encoders>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_model_car_msgs-msg:left_ticks-val is deprecated.  Use iri_model_car_msgs-msg:left_ticks instead.")
  (left_ticks m))

(cl:ensure-generic-function 'left_forward-val :lambda-list '(m))
(cl:defmethod left_forward-val ((m <encoders>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_model_car_msgs-msg:left_forward-val is deprecated.  Use iri_model_car_msgs-msg:left_forward instead.")
  (left_forward m))

(cl:ensure-generic-function 'right_ticks-val :lambda-list '(m))
(cl:defmethod right_ticks-val ((m <encoders>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_model_car_msgs-msg:right_ticks-val is deprecated.  Use iri_model_car_msgs-msg:right_ticks instead.")
  (right_ticks m))

(cl:ensure-generic-function 'right_forward-val :lambda-list '(m))
(cl:defmethod right_forward-val ((m <encoders>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_model_car_msgs-msg:right_forward-val is deprecated.  Use iri_model_car_msgs-msg:right_forward instead.")
  (right_forward m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <encoders>) ostream)
  "Serializes a message object of type '<encoders>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'left_ticks)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_forward) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'right_ticks)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_forward) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <encoders>) istream)
  "Deserializes a message object of type '<encoders>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_ticks) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'left_forward) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_ticks) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'right_forward) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<encoders>)))
  "Returns string type for a message object of type '<encoders>"
  "iri_model_car_msgs/encoders")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'encoders)))
  "Returns string type for a message object of type 'encoders"
  "iri_model_car_msgs/encoders")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<encoders>)))
  "Returns md5sum for a message object of type '<encoders>"
  "04e73434e714ecf842b1891215a2b24e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'encoders)))
  "Returns md5sum for a message object of type 'encoders"
  "04e73434e714ecf842b1891215a2b24e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<encoders>)))
  "Returns full string definition for message of type '<encoders>"
  (cl:format cl:nil "Header header~%int32 left_ticks~%bool left_forward~%int32 right_ticks~%bool right_forward~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'encoders)))
  "Returns full string definition for message of type 'encoders"
  (cl:format cl:nil "Header header~%int32 left_ticks~%bool left_forward~%int32 right_ticks~%bool right_forward~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <encoders>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <encoders>))
  "Converts a ROS message object to a list"
  (cl:list 'encoders
    (cl:cons ':header (header msg))
    (cl:cons ':left_ticks (left_ticks msg))
    (cl:cons ':left_forward (left_forward msg))
    (cl:cons ':right_ticks (right_ticks msg))
    (cl:cons ':right_forward (right_forward msg))
))
