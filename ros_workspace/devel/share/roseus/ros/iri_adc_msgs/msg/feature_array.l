;; Auto-generated. Do not edit!


(when (boundp 'iri_adc_msgs::feature_array)
  (if (not (find-package "IRI_ADC_MSGS"))
    (make-package "IRI_ADC_MSGS"))
  (shadow 'feature_array (find-package "IRI_ADC_MSGS")))
(unless (find-package "IRI_ADC_MSGS::FEATURE_ARRAY")
  (make-package "IRI_ADC_MSGS::FEATURE_ARRAY"))

(in-package "ROS")
;;//! \htmlinclude feature_array.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass iri_adc_msgs::feature_array
  :super ros::object
  :slots (_header _features ))

(defmethod iri_adc_msgs::feature_array
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:features __features) (let (r) (dotimes (i 0) (push (instance iri_adc_msgs::feature :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _features __features)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:features
   (&rest __features)
   (if (keywordp (car __features))
       (send* _features __features)
     (progn
       (if __features (setq _features (car __features)))
       _features)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; iri_adc_msgs/feature[] _features
    (apply #'+ (send-all _features :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; iri_adc_msgs/feature[] _features
     (write-long (length _features) s)
     (dolist (elem _features)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; iri_adc_msgs/feature[] _features
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _features (let (r) (dotimes (i n) (push (instance iri_adc_msgs::feature :init) r)) r))
     (dolist (elem- _features)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get iri_adc_msgs::feature_array :md5sum-) "05b0f044b6c95717caf7d22473f613a5")
(setf (get iri_adc_msgs::feature_array :datatype-) "iri_adc_msgs/feature_array")
(setf (get iri_adc_msgs::feature_array :definition-)
      "Header     header
feature[] features

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
MSG: iri_adc_msgs/feature
geometry_msgs/Pose pose
float32 probability
int32 type

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



(provide :iri_adc_msgs/feature_array "05b0f044b6c95717caf7d22473f613a5")


