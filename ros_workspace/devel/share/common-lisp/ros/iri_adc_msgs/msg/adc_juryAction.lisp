; Auto-generated. Do not edit!


(cl:in-package iri_adc_msgs-msg)


;//! \htmlinclude adc_juryAction.msg.html

(cl:defclass <adc_juryAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type iri_adc_msgs-msg:adc_juryActionGoal
    :initform (cl:make-instance 'iri_adc_msgs-msg:adc_juryActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type iri_adc_msgs-msg:adc_juryActionResult
    :initform (cl:make-instance 'iri_adc_msgs-msg:adc_juryActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type iri_adc_msgs-msg:adc_juryActionFeedback
    :initform (cl:make-instance 'iri_adc_msgs-msg:adc_juryActionFeedback)))
)

(cl:defclass adc_juryAction (<adc_juryAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <adc_juryAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'adc_juryAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-msg:<adc_juryAction> is deprecated: use iri_adc_msgs-msg:adc_juryAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <adc_juryAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-msg:action_goal-val is deprecated.  Use iri_adc_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <adc_juryAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-msg:action_result-val is deprecated.  Use iri_adc_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <adc_juryAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-msg:action_feedback-val is deprecated.  Use iri_adc_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <adc_juryAction>) ostream)
  "Serializes a message object of type '<adc_juryAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <adc_juryAction>) istream)
  "Deserializes a message object of type '<adc_juryAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<adc_juryAction>)))
  "Returns string type for a message object of type '<adc_juryAction>"
  "iri_adc_msgs/adc_juryAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'adc_juryAction)))
  "Returns string type for a message object of type 'adc_juryAction"
  "iri_adc_msgs/adc_juryAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<adc_juryAction>)))
  "Returns md5sum for a message object of type '<adc_juryAction>"
  "baa6a3def05309cc9806c06ef70e5676")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'adc_juryAction)))
  "Returns md5sum for a message object of type 'adc_juryAction"
  "baa6a3def05309cc9806c06ef70e5676")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<adc_juryAction>)))
  "Returns full string definition for message of type '<adc_juryAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%adc_juryActionGoal action_goal~%adc_juryActionResult action_result~%adc_juryActionFeedback action_feedback~%~%================================================================================~%MSG: iri_adc_msgs/adc_juryActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%adc_juryGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: iri_adc_msgs/adc_juryGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%###action~%#goals~%adc_goal_array goals~%~%================================================================================~%MSG: iri_adc_msgs/adc_goal_array~%Header     header~%adc_goal[] goals~%~%================================================================================~%MSG: iri_adc_msgs/adc_goal~%#type definitions~%uint8 PASSTHROUGH_GOAL=0~%uint8 STOP_GOAL=1~%uint8 PARKING_GOAL=2~%~%string id       # goal identifier~%float32 x       # x coordinates in meters [m]~%float32 y       # y coordinate in meters [m]~%float32 yaw     # yaw orientation in radians [rad]~%int32 type      # see type definitions above~%~%================================================================================~%MSG: iri_adc_msgs/adc_juryActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%adc_juryResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: iri_adc_msgs/adc_juryResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%~%================================================================================~%MSG: iri_adc_msgs/adc_juryActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%adc_juryFeedback feedback~%~%================================================================================~%MSG: iri_adc_msgs/adc_juryFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%#constant string for feedback status~%string NAVIGATING         = Navigating to goal~%string STOPPED            = Stopped at goal~%string PARKING            = Parking at goal~%string PARKED             = Parked at goal~%string UNPARKING          = Unparking from goal~%string PAUSED             = Paused~%string FINISHED           = Finished~%string OVERCOMING_STATIC  = Overcoming static obstacle~%string OVERCOMING_DYNAMIC = Overcoming dynamic obstacle~%string DETECTED_SIGN      = Detected traffic sign~%string DETECTED_RED       = Detected traffic light RED~%string DETECTED_GREEN     = Detected traffic light GREEN~%string EMERGENCY_STOP     = Emergency stop~%~%string status~%geometry_msgs/PoseStamped base_position~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'adc_juryAction)))
  "Returns full string definition for message of type 'adc_juryAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%adc_juryActionGoal action_goal~%adc_juryActionResult action_result~%adc_juryActionFeedback action_feedback~%~%================================================================================~%MSG: iri_adc_msgs/adc_juryActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%adc_juryGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: iri_adc_msgs/adc_juryGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%###action~%#goals~%adc_goal_array goals~%~%================================================================================~%MSG: iri_adc_msgs/adc_goal_array~%Header     header~%adc_goal[] goals~%~%================================================================================~%MSG: iri_adc_msgs/adc_goal~%#type definitions~%uint8 PASSTHROUGH_GOAL=0~%uint8 STOP_GOAL=1~%uint8 PARKING_GOAL=2~%~%string id       # goal identifier~%float32 x       # x coordinates in meters [m]~%float32 y       # y coordinate in meters [m]~%float32 yaw     # yaw orientation in radians [rad]~%int32 type      # see type definitions above~%~%================================================================================~%MSG: iri_adc_msgs/adc_juryActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%adc_juryResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: iri_adc_msgs/adc_juryResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%~%================================================================================~%MSG: iri_adc_msgs/adc_juryActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%adc_juryFeedback feedback~%~%================================================================================~%MSG: iri_adc_msgs/adc_juryFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%#constant string for feedback status~%string NAVIGATING         = Navigating to goal~%string STOPPED            = Stopped at goal~%string PARKING            = Parking at goal~%string PARKED             = Parked at goal~%string UNPARKING          = Unparking from goal~%string PAUSED             = Paused~%string FINISHED           = Finished~%string OVERCOMING_STATIC  = Overcoming static obstacle~%string OVERCOMING_DYNAMIC = Overcoming dynamic obstacle~%string DETECTED_SIGN      = Detected traffic sign~%string DETECTED_RED       = Detected traffic light RED~%string DETECTED_GREEN     = Detected traffic light GREEN~%string EMERGENCY_STOP     = Emergency stop~%~%string status~%geometry_msgs/PoseStamped base_position~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <adc_juryAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <adc_juryAction>))
  "Converts a ROS message object to a list"
  (cl:list 'adc_juryAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))