; Auto-generated. Do not edit!


(cl:in-package iri_adc_msgs-srv)


;//! \htmlinclude jury_mode-request.msg.html

(cl:defclass <jury_mode-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass jury_mode-request (<jury_mode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <jury_mode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'jury_mode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-srv:<jury_mode-request> is deprecated: use iri_adc_msgs-srv:jury_mode-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <jury_mode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-srv:enable-val is deprecated.  Use iri_adc_msgs-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <jury_mode-request>) ostream)
  "Serializes a message object of type '<jury_mode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <jury_mode-request>) istream)
  "Deserializes a message object of type '<jury_mode-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<jury_mode-request>)))
  "Returns string type for a service object of type '<jury_mode-request>"
  "iri_adc_msgs/jury_modeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'jury_mode-request)))
  "Returns string type for a service object of type 'jury_mode-request"
  "iri_adc_msgs/jury_modeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<jury_mode-request>)))
  "Returns md5sum for a message object of type '<jury_mode-request>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'jury_mode-request)))
  "Returns md5sum for a message object of type 'jury_mode-request"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<jury_mode-request>)))
  "Returns full string definition for message of type '<jury_mode-request>"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'jury_mode-request)))
  "Returns full string definition for message of type 'jury_mode-request"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <jury_mode-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <jury_mode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'jury_mode-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude jury_mode-response.msg.html

(cl:defclass <jury_mode-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass jury_mode-response (<jury_mode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <jury_mode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'jury_mode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-srv:<jury_mode-response> is deprecated: use iri_adc_msgs-srv:jury_mode-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <jury_mode-response>) ostream)
  "Serializes a message object of type '<jury_mode-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <jury_mode-response>) istream)
  "Deserializes a message object of type '<jury_mode-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<jury_mode-response>)))
  "Returns string type for a service object of type '<jury_mode-response>"
  "iri_adc_msgs/jury_modeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'jury_mode-response)))
  "Returns string type for a service object of type 'jury_mode-response"
  "iri_adc_msgs/jury_modeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<jury_mode-response>)))
  "Returns md5sum for a message object of type '<jury_mode-response>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'jury_mode-response)))
  "Returns md5sum for a message object of type 'jury_mode-response"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<jury_mode-response>)))
  "Returns full string definition for message of type '<jury_mode-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'jury_mode-response)))
  "Returns full string definition for message of type 'jury_mode-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <jury_mode-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <jury_mode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'jury_mode-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'jury_mode)))
  'jury_mode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'jury_mode)))
  'jury_mode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'jury_mode)))
  "Returns string type for a service object of type '<jury_mode>"
  "iri_adc_msgs/jury_mode")