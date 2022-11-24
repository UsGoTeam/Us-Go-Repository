; Auto-generated. Do not edit!


(cl:in-package iri_adc_msgs-msg)


;//! \htmlinclude adc_goal_array.msg.html

(cl:defclass <adc_goal_array> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goals
    :reader goals
    :initarg :goals
    :type (cl:vector iri_adc_msgs-msg:adc_goal)
   :initform (cl:make-array 0 :element-type 'iri_adc_msgs-msg:adc_goal :initial-element (cl:make-instance 'iri_adc_msgs-msg:adc_goal))))
)

(cl:defclass adc_goal_array (<adc_goal_array>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <adc_goal_array>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'adc_goal_array)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-msg:<adc_goal_array> is deprecated: use iri_adc_msgs-msg:adc_goal_array instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <adc_goal_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-msg:header-val is deprecated.  Use iri_adc_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goals-val :lambda-list '(m))
(cl:defmethod goals-val ((m <adc_goal_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-msg:goals-val is deprecated.  Use iri_adc_msgs-msg:goals instead.")
  (goals m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <adc_goal_array>) ostream)
  "Serializes a message object of type '<adc_goal_array>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'goals))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <adc_goal_array>) istream)
  "Deserializes a message object of type '<adc_goal_array>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'iri_adc_msgs-msg:adc_goal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<adc_goal_array>)))
  "Returns string type for a message object of type '<adc_goal_array>"
  "iri_adc_msgs/adc_goal_array")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'adc_goal_array)))
  "Returns string type for a message object of type 'adc_goal_array"
  "iri_adc_msgs/adc_goal_array")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<adc_goal_array>)))
  "Returns md5sum for a message object of type '<adc_goal_array>"
  "c4c070bca6927a2df953aeda1b99b77a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'adc_goal_array)))
  "Returns md5sum for a message object of type 'adc_goal_array"
  "c4c070bca6927a2df953aeda1b99b77a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<adc_goal_array>)))
  "Returns full string definition for message of type '<adc_goal_array>"
  (cl:format cl:nil "Header     header~%adc_goal[] goals~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: iri_adc_msgs/adc_goal~%#type definitions~%uint8 PASSTHROUGH_GOAL=0~%uint8 STOP_GOAL=1~%uint8 PARKING_GOAL=2~%~%string id       # goal identifier~%float32 x       # x coordinates in meters [m]~%float32 y       # y coordinate in meters [m]~%float32 yaw     # yaw orientation in radians [rad]~%int32 type      # see type definitions above~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'adc_goal_array)))
  "Returns full string definition for message of type 'adc_goal_array"
  (cl:format cl:nil "Header     header~%adc_goal[] goals~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: iri_adc_msgs/adc_goal~%#type definitions~%uint8 PASSTHROUGH_GOAL=0~%uint8 STOP_GOAL=1~%uint8 PARKING_GOAL=2~%~%string id       # goal identifier~%float32 x       # x coordinates in meters [m]~%float32 y       # y coordinate in meters [m]~%float32 yaw     # yaw orientation in radians [rad]~%int32 type      # see type definitions above~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <adc_goal_array>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <adc_goal_array>))
  "Converts a ROS message object to a list"
  (cl:list 'adc_goal_array
    (cl:cons ':header (header msg))
    (cl:cons ':goals (goals msg))
))
