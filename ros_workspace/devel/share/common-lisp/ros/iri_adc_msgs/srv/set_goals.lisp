; Auto-generated. Do not edit!


(cl:in-package iri_adc_msgs-srv)


;//! \htmlinclude set_goals-request.msg.html

(cl:defclass <set_goals-request> (roslisp-msg-protocol:ros-message)
  ((goals
    :reader goals
    :initarg :goals
    :type iri_adc_msgs-msg:adc_goal_array
    :initform (cl:make-instance 'iri_adc_msgs-msg:adc_goal_array)))
)

(cl:defclass set_goals-request (<set_goals-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_goals-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_goals-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-srv:<set_goals-request> is deprecated: use iri_adc_msgs-srv:set_goals-request instead.")))

(cl:ensure-generic-function 'goals-val :lambda-list '(m))
(cl:defmethod goals-val ((m <set_goals-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-srv:goals-val is deprecated.  Use iri_adc_msgs-srv:goals instead.")
  (goals m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_goals-request>) ostream)
  "Serializes a message object of type '<set_goals-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goals) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_goals-request>) istream)
  "Deserializes a message object of type '<set_goals-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goals) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_goals-request>)))
  "Returns string type for a service object of type '<set_goals-request>"
  "iri_adc_msgs/set_goalsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_goals-request)))
  "Returns string type for a service object of type 'set_goals-request"
  "iri_adc_msgs/set_goalsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_goals-request>)))
  "Returns md5sum for a message object of type '<set_goals-request>"
  "a170b04c96029cb68c3e3ba1b3e16f93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_goals-request)))
  "Returns md5sum for a message object of type 'set_goals-request"
  "a170b04c96029cb68c3e3ba1b3e16f93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_goals-request>)))
  "Returns full string definition for message of type '<set_goals-request>"
  (cl:format cl:nil "adc_goal_array goals~%~%================================================================================~%MSG: iri_adc_msgs/adc_goal_array~%Header     header~%adc_goal[] goals~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: iri_adc_msgs/adc_goal~%#type definitions~%uint8 PASSTHROUGH_GOAL=0~%uint8 STOP_GOAL=1~%uint8 PARKING_GOAL=2~%~%string id       # goal identifier~%float32 x       # x coordinates in meters [m]~%float32 y       # y coordinate in meters [m]~%float32 yaw     # yaw orientation in radians [rad]~%int32 type      # see type definitions above~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_goals-request)))
  "Returns full string definition for message of type 'set_goals-request"
  (cl:format cl:nil "adc_goal_array goals~%~%================================================================================~%MSG: iri_adc_msgs/adc_goal_array~%Header     header~%adc_goal[] goals~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: iri_adc_msgs/adc_goal~%#type definitions~%uint8 PASSTHROUGH_GOAL=0~%uint8 STOP_GOAL=1~%uint8 PARKING_GOAL=2~%~%string id       # goal identifier~%float32 x       # x coordinates in meters [m]~%float32 y       # y coordinate in meters [m]~%float32 yaw     # yaw orientation in radians [rad]~%int32 type      # see type definitions above~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_goals-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goals))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_goals-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_goals-request
    (cl:cons ':goals (goals msg))
))
;//! \htmlinclude set_goals-response.msg.html

(cl:defclass <set_goals-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass set_goals-response (<set_goals-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_goals-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_goals-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-srv:<set_goals-response> is deprecated: use iri_adc_msgs-srv:set_goals-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <set_goals-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-srv:success-val is deprecated.  Use iri_adc_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <set_goals-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-srv:message-val is deprecated.  Use iri_adc_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_goals-response>) ostream)
  "Serializes a message object of type '<set_goals-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_goals-response>) istream)
  "Deserializes a message object of type '<set_goals-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_goals-response>)))
  "Returns string type for a service object of type '<set_goals-response>"
  "iri_adc_msgs/set_goalsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_goals-response)))
  "Returns string type for a service object of type 'set_goals-response"
  "iri_adc_msgs/set_goalsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_goals-response>)))
  "Returns md5sum for a message object of type '<set_goals-response>"
  "a170b04c96029cb68c3e3ba1b3e16f93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_goals-response)))
  "Returns md5sum for a message object of type 'set_goals-response"
  "a170b04c96029cb68c3e3ba1b3e16f93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_goals-response>)))
  "Returns full string definition for message of type '<set_goals-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_goals-response)))
  "Returns full string definition for message of type 'set_goals-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_goals-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_goals-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_goals-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_goals)))
  'set_goals-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_goals)))
  'set_goals-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_goals)))
  "Returns string type for a service object of type '<set_goals>"
  "iri_adc_msgs/set_goals")