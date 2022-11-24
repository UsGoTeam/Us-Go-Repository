; Auto-generated. Do not edit!


(cl:in-package iri_adc_msgs-msg)


;//! \htmlinclude adc_juryGoal.msg.html

(cl:defclass <adc_juryGoal> (roslisp-msg-protocol:ros-message)
  ((goals
    :reader goals
    :initarg :goals
    :type iri_adc_msgs-msg:adc_goal_array
    :initform (cl:make-instance 'iri_adc_msgs-msg:adc_goal_array)))
)

(cl:defclass adc_juryGoal (<adc_juryGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <adc_juryGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'adc_juryGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-msg:<adc_juryGoal> is deprecated: use iri_adc_msgs-msg:adc_juryGoal instead.")))

(cl:ensure-generic-function 'goals-val :lambda-list '(m))
(cl:defmethod goals-val ((m <adc_juryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-msg:goals-val is deprecated.  Use iri_adc_msgs-msg:goals instead.")
  (goals m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <adc_juryGoal>) ostream)
  "Serializes a message object of type '<adc_juryGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goals) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <adc_juryGoal>) istream)
  "Deserializes a message object of type '<adc_juryGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goals) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<adc_juryGoal>)))
  "Returns string type for a message object of type '<adc_juryGoal>"
  "iri_adc_msgs/adc_juryGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'adc_juryGoal)))
  "Returns string type for a message object of type 'adc_juryGoal"
  "iri_adc_msgs/adc_juryGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<adc_juryGoal>)))
  "Returns md5sum for a message object of type '<adc_juryGoal>"
  "0dcf3a4de3a9fd4fc109b76f00265887")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'adc_juryGoal)))
  "Returns md5sum for a message object of type 'adc_juryGoal"
  "0dcf3a4de3a9fd4fc109b76f00265887")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<adc_juryGoal>)))
  "Returns full string definition for message of type '<adc_juryGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%###action~%#goals~%adc_goal_array goals~%~%================================================================================~%MSG: iri_adc_msgs/adc_goal_array~%Header     header~%adc_goal[] goals~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: iri_adc_msgs/adc_goal~%#type definitions~%uint8 PASSTHROUGH_GOAL=0~%uint8 STOP_GOAL=1~%uint8 PARKING_GOAL=2~%~%string id       # goal identifier~%float32 x       # x coordinates in meters [m]~%float32 y       # y coordinate in meters [m]~%float32 yaw     # yaw orientation in radians [rad]~%int32 type      # see type definitions above~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'adc_juryGoal)))
  "Returns full string definition for message of type 'adc_juryGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%###action~%#goals~%adc_goal_array goals~%~%================================================================================~%MSG: iri_adc_msgs/adc_goal_array~%Header     header~%adc_goal[] goals~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: iri_adc_msgs/adc_goal~%#type definitions~%uint8 PASSTHROUGH_GOAL=0~%uint8 STOP_GOAL=1~%uint8 PARKING_GOAL=2~%~%string id       # goal identifier~%float32 x       # x coordinates in meters [m]~%float32 y       # y coordinate in meters [m]~%float32 yaw     # yaw orientation in radians [rad]~%int32 type      # see type definitions above~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <adc_juryGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goals))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <adc_juryGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'adc_juryGoal
    (cl:cons ':goals (goals msg))
))