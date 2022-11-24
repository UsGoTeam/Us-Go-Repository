; Auto-generated. Do not edit!


(cl:in-package iri_adc_msgs-msg)


;//! \htmlinclude adc_juryFeedback.msg.html

(cl:defclass <adc_juryFeedback> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (base_position
    :reader base_position
    :initarg :base_position
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass adc_juryFeedback (<adc_juryFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <adc_juryFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'adc_juryFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-msg:<adc_juryFeedback> is deprecated: use iri_adc_msgs-msg:adc_juryFeedback instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <adc_juryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-msg:status-val is deprecated.  Use iri_adc_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'base_position-val :lambda-list '(m))
(cl:defmethod base_position-val ((m <adc_juryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-msg:base_position-val is deprecated.  Use iri_adc_msgs-msg:base_position instead.")
  (base_position m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<adc_juryFeedback>)))
    "Constants for message type '<adc_juryFeedback>"
  '((:NAVIGATING . Navigating to goal)
    (:STOPPED . Stopped at goal)
    (:PARKING . Parking at goal)
    (:PARKED . Parked at goal)
    (:UNPARKING . Unparking from goal)
    (:PAUSED . Paused)
    (:FINISHED . Finished)
    (:OVERCOMING_STATIC . Overcoming static obstacle)
    (:OVERCOMING_DYNAMIC . Overcoming dynamic obstacle)
    (:DETECTED_SIGN . Detected traffic sign)
    (:DETECTED_RED . Detected traffic light RED)
    (:DETECTED_GREEN . Detected traffic light GREEN)
    (:EMERGENCY_STOP . Emergency stop))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'adc_juryFeedback)))
    "Constants for message type 'adc_juryFeedback"
  '((:NAVIGATING . Navigating to goal)
    (:STOPPED . Stopped at goal)
    (:PARKING . Parking at goal)
    (:PARKED . Parked at goal)
    (:UNPARKING . Unparking from goal)
    (:PAUSED . Paused)
    (:FINISHED . Finished)
    (:OVERCOMING_STATIC . Overcoming static obstacle)
    (:OVERCOMING_DYNAMIC . Overcoming dynamic obstacle)
    (:DETECTED_SIGN . Detected traffic sign)
    (:DETECTED_RED . Detected traffic light RED)
    (:DETECTED_GREEN . Detected traffic light GREEN)
    (:EMERGENCY_STOP . Emergency stop))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <adc_juryFeedback>) ostream)
  "Serializes a message object of type '<adc_juryFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'base_position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <adc_juryFeedback>) istream)
  "Deserializes a message object of type '<adc_juryFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'base_position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<adc_juryFeedback>)))
  "Returns string type for a message object of type '<adc_juryFeedback>"
  "iri_adc_msgs/adc_juryFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'adc_juryFeedback)))
  "Returns string type for a message object of type 'adc_juryFeedback"
  "iri_adc_msgs/adc_juryFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<adc_juryFeedback>)))
  "Returns md5sum for a message object of type '<adc_juryFeedback>"
  "c9ecb5d8e4e7662a4af7ee287ef77c65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'adc_juryFeedback)))
  "Returns md5sum for a message object of type 'adc_juryFeedback"
  "c9ecb5d8e4e7662a4af7ee287ef77c65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<adc_juryFeedback>)))
  "Returns full string definition for message of type '<adc_juryFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%#constant string for feedback status~%string NAVIGATING         = Navigating to goal~%string STOPPED            = Stopped at goal~%string PARKING            = Parking at goal~%string PARKED             = Parked at goal~%string UNPARKING          = Unparking from goal~%string PAUSED             = Paused~%string FINISHED           = Finished~%string OVERCOMING_STATIC  = Overcoming static obstacle~%string OVERCOMING_DYNAMIC = Overcoming dynamic obstacle~%string DETECTED_SIGN      = Detected traffic sign~%string DETECTED_RED       = Detected traffic light RED~%string DETECTED_GREEN     = Detected traffic light GREEN~%string EMERGENCY_STOP     = Emergency stop~%~%string status~%geometry_msgs/PoseStamped base_position~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'adc_juryFeedback)))
  "Returns full string definition for message of type 'adc_juryFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%#constant string for feedback status~%string NAVIGATING         = Navigating to goal~%string STOPPED            = Stopped at goal~%string PARKING            = Parking at goal~%string PARKED             = Parked at goal~%string UNPARKING          = Unparking from goal~%string PAUSED             = Paused~%string FINISHED           = Finished~%string OVERCOMING_STATIC  = Overcoming static obstacle~%string OVERCOMING_DYNAMIC = Overcoming dynamic obstacle~%string DETECTED_SIGN      = Detected traffic sign~%string DETECTED_RED       = Detected traffic light RED~%string DETECTED_GREEN     = Detected traffic light GREEN~%string EMERGENCY_STOP     = Emergency stop~%~%string status~%geometry_msgs/PoseStamped base_position~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <adc_juryFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'base_position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <adc_juryFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'adc_juryFeedback
    (cl:cons ':status (status msg))
    (cl:cons ':base_position (base_position msg))
))
