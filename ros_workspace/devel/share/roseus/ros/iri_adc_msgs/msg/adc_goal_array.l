;; Auto-generated. Do not edit!


(when (boundp 'iri_adc_msgs::adc_goal_array)
  (if (not (find-package "IRI_ADC_MSGS"))
    (make-package "IRI_ADC_MSGS"))
  (shadow 'adc_goal_array (find-package "IRI_ADC_MSGS")))
(unless (find-package "IRI_ADC_MSGS::ADC_GOAL_ARRAY")
  (make-package "IRI_ADC_MSGS::ADC_GOAL_ARRAY"))

(in-package "ROS")
;;//! \htmlinclude adc_goal_array.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass iri_adc_msgs::adc_goal_array
  :super ros::object
  :slots (_header _goals ))

(defmethod iri_adc_msgs::adc_goal_array
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:goals __goals) (let (r) (dotimes (i 0) (push (instance iri_adc_msgs::adc_goal :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _goals __goals)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
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
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; iri_adc_msgs/adc_goal[] _goals
    (apply #'+ (send-all _goals :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; iri_adc_msgs/adc_goal[] _goals
     (write-long (length _goals) s)
     (dolist (elem _goals)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; iri_adc_msgs/adc_goal[] _goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goals (let (r) (dotimes (i n) (push (instance iri_adc_msgs::adc_goal :init) r)) r))
     (dolist (elem- _goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get iri_adc_msgs::adc_goal_array :md5sum-) "c4c070bca6927a2df953aeda1b99b77a")
(setf (get iri_adc_msgs::adc_goal_array :datatype-) "iri_adc_msgs/adc_goal_array")
(setf (get iri_adc_msgs::adc_goal_array :definition-)
      "Header     header
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

")



(provide :iri_adc_msgs/adc_goal_array "c4c070bca6927a2df953aeda1b99b77a")


