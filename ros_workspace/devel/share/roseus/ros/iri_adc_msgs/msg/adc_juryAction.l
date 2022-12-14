;; Auto-generated. Do not edit!


(when (boundp 'iri_adc_msgs::adc_juryAction)
  (if (not (find-package "IRI_ADC_MSGS"))
    (make-package "IRI_ADC_MSGS"))
  (shadow 'adc_juryAction (find-package "IRI_ADC_MSGS")))
(unless (find-package "IRI_ADC_MSGS::ADC_JURYACTION")
  (make-package "IRI_ADC_MSGS::ADC_JURYACTION"))

(in-package "ROS")
;;//! \htmlinclude adc_juryAction.msg.html


(defclass iri_adc_msgs::adc_juryAction
  :super ros::object
  :slots (_action_goal _action_result _action_feedback ))

(defmethod iri_adc_msgs::adc_juryAction
  (:init
   (&key
    ((:action_goal __action_goal) (instance iri_adc_msgs::adc_juryActionGoal :init))
    ((:action_result __action_result) (instance iri_adc_msgs::adc_juryActionResult :init))
    ((:action_feedback __action_feedback) (instance iri_adc_msgs::adc_juryActionFeedback :init))
    )
   (send-super :init)
   (setq _action_goal __action_goal)
   (setq _action_result __action_result)
   (setq _action_feedback __action_feedback)
   self)
  (:action_goal
   (&rest __action_goal)
   (if (keywordp (car __action_goal))
       (send* _action_goal __action_goal)
     (progn
       (if __action_goal (setq _action_goal (car __action_goal)))
       _action_goal)))
  (:action_result
   (&rest __action_result)
   (if (keywordp (car __action_result))
       (send* _action_result __action_result)
     (progn
       (if __action_result (setq _action_result (car __action_result)))
       _action_result)))
  (:action_feedback
   (&rest __action_feedback)
   (if (keywordp (car __action_feedback))
       (send* _action_feedback __action_feedback)
     (progn
       (if __action_feedback (setq _action_feedback (car __action_feedback)))
       _action_feedback)))
  (:serialization-length
   ()
   (+
    ;; iri_adc_msgs/adc_juryActionGoal _action_goal
    (send _action_goal :serialization-length)
    ;; iri_adc_msgs/adc_juryActionResult _action_result
    (send _action_result :serialization-length)
    ;; iri_adc_msgs/adc_juryActionFeedback _action_feedback
    (send _action_feedback :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; iri_adc_msgs/adc_juryActionGoal _action_goal
       (send _action_goal :serialize s)
     ;; iri_adc_msgs/adc_juryActionResult _action_result
       (send _action_result :serialize s)
     ;; iri_adc_msgs/adc_juryActionFeedback _action_feedback
       (send _action_feedback :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; iri_adc_msgs/adc_juryActionGoal _action_goal
     (send _action_goal :deserialize buf ptr-) (incf ptr- (send _action_goal :serialization-length))
   ;; iri_adc_msgs/adc_juryActionResult _action_result
     (send _action_result :deserialize buf ptr-) (incf ptr- (send _action_result :serialization-length))
   ;; iri_adc_msgs/adc_juryActionFeedback _action_feedback
     (send _action_feedback :deserialize buf ptr-) (incf ptr- (send _action_feedback :serialization-length))
   ;;
   self)
  )

(setf (get iri_adc_msgs::adc_juryAction :md5sum-) "baa6a3def05309cc9806c06ef70e5676")
(setf (get iri_adc_msgs::adc_juryAction :datatype-) "iri_adc_msgs/adc_juryAction")
(setf (get iri_adc_msgs::adc_juryAction :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

adc_juryActionGoal action_goal
adc_juryActionResult action_result
adc_juryActionFeedback action_feedback

================================================================================
MSG: iri_adc_msgs/adc_juryActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
adc_juryGoal goal

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: iri_adc_msgs/adc_juryGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
###action
#goals
adc_goal_array goals

================================================================================
MSG: iri_adc_msgs/adc_goal_array
Header     header
adc_goal[] goals

================================================================================
MSG: iri_adc_msgs/adc_goal
#type definitions
uint8 PASSTHROUGH_GOAL=0
uint8 STOP_GOAL=1
uint8 PARKING_GOAL=2

string id       # goal identifier
float32 x       # x coordinates in meters [m]
float32 y       # y coordinate in meters [m]
float32 yaw     # yaw orientation in radians [rad]
int32 type      # see type definitions above

================================================================================
MSG: iri_adc_msgs/adc_juryActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
adc_juryResult result

================================================================================
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text


================================================================================
MSG: iri_adc_msgs/adc_juryResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result

================================================================================
MSG: iri_adc_msgs/adc_juryActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
adc_juryFeedback feedback

================================================================================
MSG: iri_adc_msgs/adc_juryFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback

#constant string for feedback status
string NAVIGATING         = Navigating to goal
string STOPPED            = Stopped at goal
string PARKING            = Parking at goal
string PARKED             = Parked at goal
string UNPARKING          = Unparking from goal
string PAUSED             = Paused
string FINISHED           = Finished
string OVERCOMING_STATIC  = Overcoming static obstacle
string OVERCOMING_DYNAMIC = Overcoming dynamic obstacle
string DETECTED_SIGN      = Detected traffic sign
string DETECTED_RED       = Detected traffic light RED
string DETECTED_GREEN     = Detected traffic light GREEN
string EMERGENCY_STOP     = Emergency stop

string status
geometry_msgs/PoseStamped base_position


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :iri_adc_msgs/adc_juryAction "baa6a3def05309cc9806c06ef70e5676")


