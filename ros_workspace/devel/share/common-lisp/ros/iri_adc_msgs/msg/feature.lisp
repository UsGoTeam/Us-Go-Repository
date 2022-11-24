; Auto-generated. Do not edit!


(cl:in-package iri_adc_msgs-msg)


;//! \htmlinclude feature.msg.html

(cl:defclass <feature> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (probability
    :reader probability
    :initarg :probability
    :type cl:float
    :initform 0.0)
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0))
)

(cl:defclass feature (<feature>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <feature>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'feature)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-msg:<feature> is deprecated: use iri_adc_msgs-msg:feature instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <feature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-msg:pose-val is deprecated.  Use iri_adc_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'probability-val :lambda-list '(m))
(cl:defmethod probability-val ((m <feature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-msg:probability-val is deprecated.  Use iri_adc_msgs-msg:probability instead.")
  (probability m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <feature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-msg:type-val is deprecated.  Use iri_adc_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <feature>) ostream)
  "Serializes a message object of type '<feature>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'probability))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <feature>) istream)
  "Deserializes a message object of type '<feature>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probability) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<feature>)))
  "Returns string type for a message object of type '<feature>"
  "iri_adc_msgs/feature")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'feature)))
  "Returns string type for a message object of type 'feature"
  "iri_adc_msgs/feature")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<feature>)))
  "Returns md5sum for a message object of type '<feature>"
  "03a94f020f11a010a1eef2a8da3da4fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'feature)))
  "Returns md5sum for a message object of type 'feature"
  "03a94f020f11a010a1eef2a8da3da4fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<feature>)))
  "Returns full string definition for message of type '<feature>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%float32 probability~%int32 type~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'feature)))
  "Returns full string definition for message of type 'feature"
  (cl:format cl:nil "geometry_msgs/Pose pose~%float32 probability~%int32 type~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <feature>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <feature>))
  "Converts a ROS message object to a list"
  (cl:list 'feature
    (cl:cons ':pose (pose msg))
    (cl:cons ':probability (probability msg))
    (cl:cons ':type (type msg))
))
