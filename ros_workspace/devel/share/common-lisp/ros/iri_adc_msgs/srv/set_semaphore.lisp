; Auto-generated. Do not edit!


(cl:in-package iri_adc_msgs-srv)


;//! \htmlinclude set_semaphore-request.msg.html

(cl:defclass <set_semaphore-request> (roslisp-msg-protocol:ros-message)
  ((color
    :reader color
    :initarg :color
    :type cl:fixnum
    :initform 0))
)

(cl:defclass set_semaphore-request (<set_semaphore-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_semaphore-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_semaphore-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-srv:<set_semaphore-request> is deprecated: use iri_adc_msgs-srv:set_semaphore-request instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <set_semaphore-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-srv:color-val is deprecated.  Use iri_adc_msgs-srv:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<set_semaphore-request>)))
    "Constants for message type '<set_semaphore-request>"
  '((:SEM_OFF . 0)
    (:SEM_RED . 1)
    (:SEM_GREEN . 2)
    (:SEM_ORANGE_BLINK . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'set_semaphore-request)))
    "Constants for message type 'set_semaphore-request"
  '((:SEM_OFF . 0)
    (:SEM_RED . 1)
    (:SEM_GREEN . 2)
    (:SEM_ORANGE_BLINK . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_semaphore-request>) ostream)
  "Serializes a message object of type '<set_semaphore-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_semaphore-request>) istream)
  "Deserializes a message object of type '<set_semaphore-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_semaphore-request>)))
  "Returns string type for a service object of type '<set_semaphore-request>"
  "iri_adc_msgs/set_semaphoreRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_semaphore-request)))
  "Returns string type for a service object of type 'set_semaphore-request"
  "iri_adc_msgs/set_semaphoreRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_semaphore-request>)))
  "Returns md5sum for a message object of type '<set_semaphore-request>"
  "3a2c1112df73325ba59340ec2e040a3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_semaphore-request)))
  "Returns md5sum for a message object of type 'set_semaphore-request"
  "3a2c1112df73325ba59340ec2e040a3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_semaphore-request>)))
  "Returns full string definition for message of type '<set_semaphore-request>"
  (cl:format cl:nil "uint8 SEM_OFF = 0~%uint8 SEM_RED = 1~%uint8 SEM_GREEN = 2~%uint8 SEM_ORANGE_BLINK = 3~%~%uint8 color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_semaphore-request)))
  "Returns full string definition for message of type 'set_semaphore-request"
  (cl:format cl:nil "uint8 SEM_OFF = 0~%uint8 SEM_RED = 1~%uint8 SEM_GREEN = 2~%uint8 SEM_ORANGE_BLINK = 3~%~%uint8 color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_semaphore-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_semaphore-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_semaphore-request
    (cl:cons ':color (color msg))
))
;//! \htmlinclude set_semaphore-response.msg.html

(cl:defclass <set_semaphore-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass set_semaphore-response (<set_semaphore-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_semaphore-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_semaphore-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-srv:<set_semaphore-response> is deprecated: use iri_adc_msgs-srv:set_semaphore-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_semaphore-response>) ostream)
  "Serializes a message object of type '<set_semaphore-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_semaphore-response>) istream)
  "Deserializes a message object of type '<set_semaphore-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_semaphore-response>)))
  "Returns string type for a service object of type '<set_semaphore-response>"
  "iri_adc_msgs/set_semaphoreResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_semaphore-response)))
  "Returns string type for a service object of type 'set_semaphore-response"
  "iri_adc_msgs/set_semaphoreResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_semaphore-response>)))
  "Returns md5sum for a message object of type '<set_semaphore-response>"
  "3a2c1112df73325ba59340ec2e040a3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_semaphore-response)))
  "Returns md5sum for a message object of type 'set_semaphore-response"
  "3a2c1112df73325ba59340ec2e040a3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_semaphore-response>)))
  "Returns full string definition for message of type '<set_semaphore-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_semaphore-response)))
  "Returns full string definition for message of type 'set_semaphore-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_semaphore-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_semaphore-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_semaphore-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_semaphore)))
  'set_semaphore-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_semaphore)))
  'set_semaphore-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_semaphore)))
  "Returns string type for a service object of type '<set_semaphore>"
  "iri_adc_msgs/set_semaphore")