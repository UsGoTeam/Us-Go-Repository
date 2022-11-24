; Auto-generated. Do not edit!


(cl:in-package iri_adc_msgs-srv)


;//! \htmlinclude get_opendrive_nodes-request.msg.html

(cl:defclass <get_opendrive_nodes-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass get_opendrive_nodes-request (<get_opendrive_nodes-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_opendrive_nodes-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_opendrive_nodes-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-srv:<get_opendrive_nodes-request> is deprecated: use iri_adc_msgs-srv:get_opendrive_nodes-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_opendrive_nodes-request>) ostream)
  "Serializes a message object of type '<get_opendrive_nodes-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_opendrive_nodes-request>) istream)
  "Deserializes a message object of type '<get_opendrive_nodes-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_opendrive_nodes-request>)))
  "Returns string type for a service object of type '<get_opendrive_nodes-request>"
  "iri_adc_msgs/get_opendrive_nodesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_opendrive_nodes-request)))
  "Returns string type for a service object of type 'get_opendrive_nodes-request"
  "iri_adc_msgs/get_opendrive_nodesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_opendrive_nodes-request>)))
  "Returns md5sum for a message object of type '<get_opendrive_nodes-request>"
  "5aeb03ca3f6c21b8df58026d567d3563")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_opendrive_nodes-request)))
  "Returns md5sum for a message object of type 'get_opendrive_nodes-request"
  "5aeb03ca3f6c21b8df58026d567d3563")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_opendrive_nodes-request>)))
  "Returns full string definition for message of type '<get_opendrive_nodes-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_opendrive_nodes-request)))
  "Returns full string definition for message of type 'get_opendrive_nodes-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_opendrive_nodes-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_opendrive_nodes-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_opendrive_nodes-request
))
;//! \htmlinclude get_opendrive_nodes-response.msg.html

(cl:defclass <get_opendrive_nodes-response> (roslisp-msg-protocol:ros-message)
  ((opendrive_nodes
    :reader opendrive_nodes
    :initarg :opendrive_nodes
    :type iri_adc_msgs-msg:adc_opendrive_nodes
    :initform (cl:make-instance 'iri_adc_msgs-msg:adc_opendrive_nodes)))
)

(cl:defclass get_opendrive_nodes-response (<get_opendrive_nodes-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_opendrive_nodes-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_opendrive_nodes-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-srv:<get_opendrive_nodes-response> is deprecated: use iri_adc_msgs-srv:get_opendrive_nodes-response instead.")))

(cl:ensure-generic-function 'opendrive_nodes-val :lambda-list '(m))
(cl:defmethod opendrive_nodes-val ((m <get_opendrive_nodes-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-srv:opendrive_nodes-val is deprecated.  Use iri_adc_msgs-srv:opendrive_nodes instead.")
  (opendrive_nodes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_opendrive_nodes-response>) ostream)
  "Serializes a message object of type '<get_opendrive_nodes-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'opendrive_nodes) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_opendrive_nodes-response>) istream)
  "Deserializes a message object of type '<get_opendrive_nodes-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'opendrive_nodes) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_opendrive_nodes-response>)))
  "Returns string type for a service object of type '<get_opendrive_nodes-response>"
  "iri_adc_msgs/get_opendrive_nodesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_opendrive_nodes-response)))
  "Returns string type for a service object of type 'get_opendrive_nodes-response"
  "iri_adc_msgs/get_opendrive_nodesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_opendrive_nodes-response>)))
  "Returns md5sum for a message object of type '<get_opendrive_nodes-response>"
  "5aeb03ca3f6c21b8df58026d567d3563")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_opendrive_nodes-response)))
  "Returns md5sum for a message object of type 'get_opendrive_nodes-response"
  "5aeb03ca3f6c21b8df58026d567d3563")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_opendrive_nodes-response>)))
  "Returns full string definition for message of type '<get_opendrive_nodes-response>"
  (cl:format cl:nil "iri_adc_msgs/adc_opendrive_nodes opendrive_nodes~%~%~%================================================================================~%MSG: iri_adc_msgs/adc_opendrive_nodes~%Header header~%uint32[] nodes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_opendrive_nodes-response)))
  "Returns full string definition for message of type 'get_opendrive_nodes-response"
  (cl:format cl:nil "iri_adc_msgs/adc_opendrive_nodes opendrive_nodes~%~%~%================================================================================~%MSG: iri_adc_msgs/adc_opendrive_nodes~%Header header~%uint32[] nodes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_opendrive_nodes-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'opendrive_nodes))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_opendrive_nodes-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_opendrive_nodes-response
    (cl:cons ':opendrive_nodes (opendrive_nodes msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_opendrive_nodes)))
  'get_opendrive_nodes-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_opendrive_nodes)))
  'get_opendrive_nodes-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_opendrive_nodes)))
  "Returns string type for a service object of type '<get_opendrive_nodes>"
  "iri_adc_msgs/get_opendrive_nodes")