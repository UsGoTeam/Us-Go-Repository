; Auto-generated. Do not edit!


(cl:in-package iri_adc_msgs-msg)


;//! \htmlinclude feature_array.msg.html

(cl:defclass <feature_array> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (features
    :reader features
    :initarg :features
    :type (cl:vector iri_adc_msgs-msg:feature)
   :initform (cl:make-array 0 :element-type 'iri_adc_msgs-msg:feature :initial-element (cl:make-instance 'iri_adc_msgs-msg:feature))))
)

(cl:defclass feature_array (<feature_array>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <feature_array>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'feature_array)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-msg:<feature_array> is deprecated: use iri_adc_msgs-msg:feature_array instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <feature_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-msg:header-val is deprecated.  Use iri_adc_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'features-val :lambda-list '(m))
(cl:defmethod features-val ((m <feature_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-msg:features-val is deprecated.  Use iri_adc_msgs-msg:features instead.")
  (features m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <feature_array>) ostream)
  "Serializes a message object of type '<feature_array>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'features))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'features))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <feature_array>) istream)
  "Deserializes a message object of type '<feature_array>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'features) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'features)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'iri_adc_msgs-msg:feature))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<feature_array>)))
  "Returns string type for a message object of type '<feature_array>"
  "iri_adc_msgs/feature_array")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'feature_array)))
  "Returns string type for a message object of type 'feature_array"
  "iri_adc_msgs/feature_array")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<feature_array>)))
  "Returns md5sum for a message object of type '<feature_array>"
  "05b0f044b6c95717caf7d22473f613a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'feature_array)))
  "Returns md5sum for a message object of type 'feature_array"
  "05b0f044b6c95717caf7d22473f613a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<feature_array>)))
  "Returns full string definition for message of type '<feature_array>"
  (cl:format cl:nil "Header     header~%feature[] features~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: iri_adc_msgs/feature~%geometry_msgs/Pose pose~%float32 probability~%int32 type~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'feature_array)))
  "Returns full string definition for message of type 'feature_array"
  (cl:format cl:nil "Header     header~%feature[] features~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: iri_adc_msgs/feature~%geometry_msgs/Pose pose~%float32 probability~%int32 type~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <feature_array>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'features) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <feature_array>))
  "Converts a ROS message object to a list"
  (cl:list 'feature_array
    (cl:cons ':header (header msg))
    (cl:cons ':features (features msg))
))
