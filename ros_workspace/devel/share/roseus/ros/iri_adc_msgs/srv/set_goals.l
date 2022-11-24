;; Auto-generated. Do not edit!


(when (boundp 'iri_adc_msgs::set_goals)
  (if (not (find-package "IRI_ADC_MSGS"))
    (make-package "IRI_ADC_MSGS"))
  (shadow 'set_goals (find-package "IRI_ADC_MSGS")))
(unless (find-package "IRI_ADC_MSGS::SET_GOALS")
  (make-package "IRI_ADC_MSGS::SET_GOALS"))
(unless (find-package "IRI_ADC_MSGS::SET_GOALSREQUEST")
  (make-package "IRI_ADC_MSGS::SET_GOALSREQUEST"))
(unless (find-package "IRI_ADC_MSGS::SET_GOALSRESPONSE")
  (make-package "IRI_ADC_MSGS::SET_GOALSRESPONSE"))

(in-package "ROS")





(defclass iri_adc_msgs::set_goalsRequest
  :super ros::object
  :slots (_goals ))

(defmethod iri_adc_msgs::set_goalsRequest
  (:init
   (&key
    ((:goals __goals) (instance iri_adc_msgs::adc_goal_array :init))
    )
   (send-super :init)
   (setq _goals __goals)
   self)
  (:goals
   (&rest __goals)
   (if (keywordp (car __goals))
       (send* _goals __goals)
     (progn
       (if __goals (setq _goals (car __goals)))
       _goals)))
  (:serialization-length
   ()
   (+
    ;; iri_adc_msgs/adc_goal_array _goals
    (send _goals :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; iri_adc_msgs/adc_goal_array _goals
       (send _goals :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; iri_adc_msgs/adc_goal_array _goals
     (send _goals :deserialize buf ptr-) (incf ptr- (send _goals :serialization-length))
   ;;
   self)
  )

(defclass iri_adc_msgs::set_goalsResponse
  :super ros::object
  :slots (_success _message ))

(defmethod iri_adc_msgs::set_goalsResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass iri_adc_msgs::set_goals
  :super ros::object
  :slots ())

(setf (get iri_adc_msgs::set_goals :md5sum-) "a170b04c96029cb68c3e3ba1b3e16f93")
(setf (get iri_adc_msgs::set_goals :datatype-) "iri_adc_msgs/set_goals")
(setf (get iri_adc_msgs::set_goals :request) iri_adc_msgs::set_goalsRequest)
(setf (get iri_adc_msgs::set_goals :response) iri_adc_msgs::set_goalsResponse)

(defmethod iri_adc_msgs::set_goalsRequest
  (:response () (instance iri_adc_msgs::set_goalsResponse :init)))

(setf (get iri_adc_msgs::set_goalsRequest :md5sum-) "a170b04c96029cb68c3e3ba1b3e16f93")
(setf (get iri_adc_msgs::set_goalsRequest :datatype-) "iri_adc_msgs/set_goalsRequest")
(setf (get iri_adc_msgs::set_goalsRequest :definition-)
      "adc_goal_array goals

================================================================================
MSG: iri_adc_msgs/adc_goal_array
Header     header
adc_goal[] goals

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
---
bool success
string message

")

(setf (get iri_adc_msgs::set_goalsResponse :md5sum-) "a170b04c96029cb68c3e3ba1b3e16f93")
(setf (get iri_adc_msgs::set_goalsResponse :datatype-) "iri_adc_msgs/set_goalsResponse")
(setf (get iri_adc_msgs::set_goalsResponse :definition-)
      "adc_goal_array goals

================================================================================
MSG: iri_adc_msgs/adc_goal_array
Header     header
adc_goal[] goals

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
---
bool success
string message

")



(provide :iri_adc_msgs/set_goals "a170b04c96029cb68c3e3ba1b3e16f93")


