;; Auto-generated. Do not edit!


(when (boundp 'iri_adc_msgs::get_opendrive_map)
  (if (not (find-package "IRI_ADC_MSGS"))
    (make-package "IRI_ADC_MSGS"))
  (shadow 'get_opendrive_map (find-package "IRI_ADC_MSGS")))
(unless (find-package "IRI_ADC_MSGS::GET_OPENDRIVE_MAP")
  (make-package "IRI_ADC_MSGS::GET_OPENDRIVE_MAP"))
(unless (find-package "IRI_ADC_MSGS::GET_OPENDRIVE_MAPREQUEST")
  (make-package "IRI_ADC_MSGS::GET_OPENDRIVE_MAPREQUEST"))
(unless (find-package "IRI_ADC_MSGS::GET_OPENDRIVE_MAPRESPONSE")
  (make-package "IRI_ADC_MSGS::GET_OPENDRIVE_MAPRESPONSE"))

(in-package "ROS")



(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass iri_adc_msgs::get_opendrive_mapRequest
  :super ros::object
  :slots ())

(defmethod iri_adc_msgs::get_opendrive_mapRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass iri_adc_msgs::get_opendrive_mapResponse
  :super ros::object
  :slots (_opendrive_map ))

(defmethod iri_adc_msgs::get_opendrive_mapResponse
  (:init
   (&key
    ((:opendrive_map __opendrive_map) (instance nav_msgs::OccupancyGrid :init))
    )
   (send-super :init)
   (setq _opendrive_map __opendrive_map)
   self)
  (:opendrive_map
   (&rest __opendrive_map)
   (if (keywordp (car __opendrive_map))
       (send* _opendrive_map __opendrive_map)
     (progn
       (if __opendrive_map (setq _opendrive_map (car __opendrive_map)))
       _opendrive_map)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/OccupancyGrid _opendrive_map
    (send _opendrive_map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/OccupancyGrid _opendrive_map
       (send _opendrive_map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/OccupancyGrid _opendrive_map
     (send _opendrive_map :deserialize buf ptr-) (incf ptr- (send _opendrive_map :serialization-length))
   ;;
   self)
  )

(defclass iri_adc_msgs::get_opendrive_map
  :super ros::object
  :slots ())

(setf (get iri_adc_msgs::get_opendrive_map :md5sum-) "803342621a8afb88f3009bae39025db7")
(setf (get iri_adc_msgs::get_opendrive_map :datatype-) "iri_adc_msgs/get_opendrive_map")
(setf (get iri_adc_msgs::get_opendrive_map :request) iri_adc_msgs::get_opendrive_mapRequest)
(setf (get iri_adc_msgs::get_opendrive_map :response) iri_adc_msgs::get_opendrive_mapResponse)

(defmethod iri_adc_msgs::get_opendrive_mapRequest
  (:response () (instance iri_adc_msgs::get_opendrive_mapResponse :init)))

(setf (get iri_adc_msgs::get_opendrive_mapRequest :md5sum-) "803342621a8afb88f3009bae39025db7")
(setf (get iri_adc_msgs::get_opendrive_mapRequest :datatype-) "iri_adc_msgs/get_opendrive_mapRequest")
(setf (get iri_adc_msgs::get_opendrive_mapRequest :definition-)
      "---
nav_msgs/OccupancyGrid opendrive_map


================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

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
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
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

(setf (get iri_adc_msgs::get_opendrive_mapResponse :md5sum-) "803342621a8afb88f3009bae39025db7")
(setf (get iri_adc_msgs::get_opendrive_mapResponse :datatype-) "iri_adc_msgs/get_opendrive_mapResponse")
(setf (get iri_adc_msgs::get_opendrive_mapResponse :definition-)
      "---
nav_msgs/OccupancyGrid opendrive_map


================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

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
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
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



(provide :iri_adc_msgs/get_opendrive_map "803342621a8afb88f3009bae39025db7")


