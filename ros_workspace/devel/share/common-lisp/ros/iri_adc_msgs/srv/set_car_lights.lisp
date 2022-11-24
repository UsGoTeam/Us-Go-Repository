; Auto-generated. Do not edit!


(cl:in-package iri_adc_msgs-srv)


;//! \htmlinclude set_car_lights-request.msg.html

(cl:defclass <set_car_lights-request> (roslisp-msg-protocol:ros-message)
  ((lights
    :reader lights
    :initarg :lights
    :type cl:fixnum
    :initform 0))
)

(cl:defclass set_car_lights-request (<set_car_lights-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_car_lights-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_car_lights-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-srv:<set_car_lights-request> is deprecated: use iri_adc_msgs-srv:set_car_lights-request instead.")))

(cl:ensure-generic-function 'lights-val :lambda-list '(m))
(cl:defmethod lights-val ((m <set_car_lights-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-srv:lights-val is deprecated.  Use iri_adc_msgs-srv:lights instead.")
  (lights m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<set_car_lights-request>)))
    "Constants for message type '<set_car_lights-request>"
  '((:CAR_OFF . 0)
    (:CAR_NORMAL_DRIVE . 1)
    (:CAR_BRAKE . 2)
    (:CAR_TURN_LEFT . 3)
    (:CAR_TURN_RIGHT . 4)
    (:CAR_PARKED . 5)
    (:CAR_EMERGENCY . 6)
    (:CAR_AMBULANCE . 7)
    (:CAR_CHARGING . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'set_car_lights-request)))
    "Constants for message type 'set_car_lights-request"
  '((:CAR_OFF . 0)
    (:CAR_NORMAL_DRIVE . 1)
    (:CAR_BRAKE . 2)
    (:CAR_TURN_LEFT . 3)
    (:CAR_TURN_RIGHT . 4)
    (:CAR_PARKED . 5)
    (:CAR_EMERGENCY . 6)
    (:CAR_AMBULANCE . 7)
    (:CAR_CHARGING . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_car_lights-request>) ostream)
  "Serializes a message object of type '<set_car_lights-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_car_lights-request>) istream)
  "Deserializes a message object of type '<set_car_lights-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_car_lights-request>)))
  "Returns string type for a service object of type '<set_car_lights-request>"
  "iri_adc_msgs/set_car_lightsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_car_lights-request)))
  "Returns string type for a service object of type 'set_car_lights-request"
  "iri_adc_msgs/set_car_lightsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_car_lights-request>)))
  "Returns md5sum for a message object of type '<set_car_lights-request>"
  "cbf39d5601e4232b41019dc5a0264ee4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_car_lights-request)))
  "Returns md5sum for a message object of type 'set_car_lights-request"
  "cbf39d5601e4232b41019dc5a0264ee4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_car_lights-request>)))
  "Returns full string definition for message of type '<set_car_lights-request>"
  (cl:format cl:nil "uint8 CAR_OFF = 0~%uint8 CAR_NORMAL_DRIVE = 1~%uint8 CAR_BRAKE = 2~%uint8 CAR_TURN_LEFT = 3~%uint8 CAR_TURN_RIGHT = 4~%uint8 CAR_PARKED = 5~%uint8 CAR_EMERGENCY = 6~%uint8 CAR_AMBULANCE = 7~%uint8 CAR_CHARGING = 8~%~%uint8 lights~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_car_lights-request)))
  "Returns full string definition for message of type 'set_car_lights-request"
  (cl:format cl:nil "uint8 CAR_OFF = 0~%uint8 CAR_NORMAL_DRIVE = 1~%uint8 CAR_BRAKE = 2~%uint8 CAR_TURN_LEFT = 3~%uint8 CAR_TURN_RIGHT = 4~%uint8 CAR_PARKED = 5~%uint8 CAR_EMERGENCY = 6~%uint8 CAR_AMBULANCE = 7~%uint8 CAR_CHARGING = 8~%~%uint8 lights~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_car_lights-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_car_lights-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_car_lights-request
    (cl:cons ':lights (lights msg))
))
;//! \htmlinclude set_car_lights-response.msg.html

(cl:defclass <set_car_lights-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass set_car_lights-response (<set_car_lights-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_car_lights-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_car_lights-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-srv:<set_car_lights-response> is deprecated: use iri_adc_msgs-srv:set_car_lights-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_car_lights-response>) ostream)
  "Serializes a message object of type '<set_car_lights-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_car_lights-response>) istream)
  "Deserializes a message object of type '<set_car_lights-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_car_lights-response>)))
  "Returns string type for a service object of type '<set_car_lights-response>"
  "iri_adc_msgs/set_car_lightsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_car_lights-response)))
  "Returns string type for a service object of type 'set_car_lights-response"
  "iri_adc_msgs/set_car_lightsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_car_lights-response>)))
  "Returns md5sum for a message object of type '<set_car_lights-response>"
  "cbf39d5601e4232b41019dc5a0264ee4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_car_lights-response)))
  "Returns md5sum for a message object of type 'set_car_lights-response"
  "cbf39d5601e4232b41019dc5a0264ee4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_car_lights-response>)))
  "Returns full string definition for message of type '<set_car_lights-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_car_lights-response)))
  "Returns full string definition for message of type 'set_car_lights-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_car_lights-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_car_lights-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_car_lights-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_car_lights)))
  'set_car_lights-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_car_lights)))
  'set_car_lights-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_car_lights)))
  "Returns string type for a service object of type '<set_car_lights>"
  "iri_adc_msgs/set_car_lights")