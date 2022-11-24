; Auto-generated. Do not edit!


(cl:in-package iri_adc_msgs-srv)


;//! \htmlinclude get_opendrive_map-request.msg.html

(cl:defclass <get_opendrive_map-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass get_opendrive_map-request (<get_opendrive_map-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_opendrive_map-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_opendrive_map-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-srv:<get_opendrive_map-request> is deprecated: use iri_adc_msgs-srv:get_opendrive_map-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_opendrive_map-request>) ostream)
  "Serializes a message object of type '<get_opendrive_map-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_opendrive_map-request>) istream)
  "Deserializes a message object of type '<get_opendrive_map-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_opendrive_map-request>)))
  "Returns string type for a service object of type '<get_opendrive_map-request>"
  "iri_adc_msgs/get_opendrive_mapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_opendrive_map-request)))
  "Returns string type for a service object of type 'get_opendrive_map-request"
  "iri_adc_msgs/get_opendrive_mapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_opendrive_map-request>)))
  "Returns md5sum for a message object of type '<get_opendrive_map-request>"
  "803342621a8afb88f3009bae39025db7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_opendrive_map-request)))
  "Returns md5sum for a message object of type 'get_opendrive_map-request"
  "803342621a8afb88f3009bae39025db7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_opendrive_map-request>)))
  "Returns full string definition for message of type '<get_opendrive_map-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_opendrive_map-request)))
  "Returns full string definition for message of type 'get_opendrive_map-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_opendrive_map-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_opendrive_map-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_opendrive_map-request
))
;//! \htmlinclude get_opendrive_map-response.msg.html

(cl:defclass <get_opendrive_map-response> (roslisp-msg-protocol:ros-message)
  ((opendrive_map
    :reader opendrive_map
    :initarg :opendrive_map
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid)))
)

(cl:defclass get_opendrive_map-response (<get_opendrive_map-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_opendrive_map-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_opendrive_map-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-srv:<get_opendrive_map-response> is deprecated: use iri_adc_msgs-srv:get_opendrive_map-response instead.")))

(cl:ensure-generic-function 'opendrive_map-val :lambda-list '(m))
(cl:defmethod opendrive_map-val ((m <get_opendrive_map-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-srv:opendrive_map-val is deprecated.  Use iri_adc_msgs-srv:opendrive_map instead.")
  (opendrive_map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_opendrive_map-response>) ostream)
  "Serializes a message object of type '<get_opendrive_map-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'opendrive_map) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_opendrive_map-response>) istream)
  "Deserializes a message object of type '<get_opendrive_map-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'opendrive_map) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_opendrive_map-response>)))
  "Returns string type for a service object of type '<get_opendrive_map-response>"
  "iri_adc_msgs/get_opendrive_mapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_opendrive_map-response)))
  "Returns string type for a service object of type 'get_opendrive_map-response"
  "iri_adc_msgs/get_opendrive_mapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_opendrive_map-response>)))
  "Returns md5sum for a message object of type '<get_opendrive_map-response>"
  "803342621a8afb88f3009bae39025db7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_opendrive_map-response)))
  "Returns md5sum for a message object of type 'get_opendrive_map-response"
  "803342621a8afb88f3009bae39025db7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_opendrive_map-response>)))
  "Returns full string definition for message of type '<get_opendrive_map-response>"
  (cl:format cl:nil "nav_msgs/OccupancyGrid opendrive_map~%~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_opendrive_map-response)))
  "Returns full string definition for message of type 'get_opendrive_map-response"
  (cl:format cl:nil "nav_msgs/OccupancyGrid opendrive_map~%~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_opendrive_map-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'opendrive_map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_opendrive_map-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_opendrive_map-response
    (cl:cons ':opendrive_map (opendrive_map msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_opendrive_map)))
  'get_opendrive_map-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_opendrive_map)))
  'get_opendrive_map-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_opendrive_map)))
  "Returns string type for a service object of type '<get_opendrive_map>"
  "iri_adc_msgs/get_opendrive_map")