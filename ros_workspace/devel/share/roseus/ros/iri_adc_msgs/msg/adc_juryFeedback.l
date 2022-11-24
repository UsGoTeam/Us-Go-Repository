;; Auto-generated. Do not edit!


(when (boundp 'iri_adc_msgs::adc_juryFeedback)
  (if (not (find-package "IRI_ADC_MSGS"))
    (make-package "IRI_ADC_MSGS"))
  (shadow 'adc_juryFeedback (find-package "IRI_ADC_MSGS")))
(unless (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK")
  (make-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude adc_juryFeedback.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*NAVIGATING*" (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(shadow '*NAVIGATING* (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(defconstant iri_adc_msgs::adc_juryFeedback::*NAVIGATING* "Navigating to goal")
(intern "*STOPPED*" (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(shadow '*STOPPED* (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(defconstant iri_adc_msgs::adc_juryFeedback::*STOPPED* "Stopped at goal")
(intern "*PARKING*" (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(shadow '*PARKING* (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(defconstant iri_adc_msgs::adc_juryFeedback::*PARKING* "Parking at goal")
(intern "*PARKED*" (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(shadow '*PARKED* (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(defconstant iri_adc_msgs::adc_juryFeedback::*PARKED* "Parked at goal")
(intern "*UNPARKING*" (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(shadow '*UNPARKING* (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(defconstant iri_adc_msgs::adc_juryFeedback::*UNPARKING* "Unparking from goal")
(intern "*PAUSED*" (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(shadow '*PAUSED* (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(defconstant iri_adc_msgs::adc_juryFeedback::*PAUSED* "Paused")
(intern "*FINISHED*" (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(shadow '*FINISHED* (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(defconstant iri_adc_msgs::adc_juryFeedback::*FINISHED* "Finished")
(intern "*OVERCOMING_STATIC*" (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(shadow '*OVERCOMING_STATIC* (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(defconstant iri_adc_msgs::adc_juryFeedback::*OVERCOMING_STATIC* "Overcoming static obstacle")
(intern "*OVERCOMING_DYNAMIC*" (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(shadow '*OVERCOMING_DYNAMIC* (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(defconstant iri_adc_msgs::adc_juryFeedback::*OVERCOMING_DYNAMIC* "Overcoming dynamic obstacle")
(intern "*DETECTED_SIGN*" (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(shadow '*DETECTED_SIGN* (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(defconstant iri_adc_msgs::adc_juryFeedback::*DETECTED_SIGN* "Detected traffic sign")
(intern "*DETECTED_RED*" (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(shadow '*DETECTED_RED* (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(defconstant iri_adc_msgs::adc_juryFeedback::*DETECTED_RED* "Detected traffic light RED")
(intern "*DETECTED_GREEN*" (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(shadow '*DETECTED_GREEN* (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(defconstant iri_adc_msgs::adc_juryFeedback::*DETECTED_GREEN* "Detected traffic light GREEN")
(intern "*EMERGENCY_STOP*" (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(shadow '*EMERGENCY_STOP* (find-package "IRI_ADC_MSGS::ADC_JURYFEEDBACK"))
(defconstant iri_adc_msgs::adc_juryFeedback::*EMERGENCY_STOP* "Emergency stop")
(defclass iri_adc_msgs::adc_juryFeedback
  :super ros::object
  :slots (_status _base_position ))

(defmethod iri_adc_msgs::adc_juryFeedback
  (:init
   (&key
    ((:status __status) "")
    ((:base_position __base_position) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _status (string __status))
   (setq _base_position __base_position)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:base_position
   (&rest __base_position)
   (if (keywordp (car __base_position))
       (send* _base_position __base_position)
     (progn
       (if __base_position (setq _base_position (car __base_position)))
       _base_position)))
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ;; geometry_msgs/PoseStamped _base_position
    (send _base_position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; geometry_msgs/PoseStamped _base_position
       (send _base_position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _base_position
     (send _base_position :deserialize buf ptr-) (incf ptr- (send _base_position :serialization-length))
   ;;
   self)
  )

(setf (get iri_adc_msgs::adc_juryFeedback :md5sum-) "c9ecb5d8e4e7662a4af7ee287ef77c65")
(setf (get iri_adc_msgs::adc_juryFeedback :datatype-) "iri_adc_msgs/adc_juryFeedback")
(setf (get iri_adc_msgs::adc_juryFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
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



(provide :iri_adc_msgs/adc_juryFeedback "c9ecb5d8e4e7662a4af7ee287ef77c65")


