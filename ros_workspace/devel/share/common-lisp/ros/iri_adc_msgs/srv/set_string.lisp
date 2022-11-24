; Auto-generated. Do not edit!


(cl:in-package iri_adc_msgs-srv)


;//! \htmlinclude set_string-request.msg.html

(cl:defclass <set_string-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass set_string-request (<set_string-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_string-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_string-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-srv:<set_string-request> is deprecated: use iri_adc_msgs-srv:set_string-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <set_string-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-srv:data-val is deprecated.  Use iri_adc_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_string-request>) ostream)
  "Serializes a message object of type '<set_string-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_string-request>) istream)
  "Deserializes a message object of type '<set_string-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_string-request>)))
  "Returns string type for a service object of type '<set_string-request>"
  "iri_adc_msgs/set_stringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_string-request)))
  "Returns string type for a service object of type 'set_string-request"
  "iri_adc_msgs/set_stringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_string-request>)))
  "Returns md5sum for a message object of type '<set_string-request>"
  "546971982e3fbbd5a41e60fb6432e357")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_string-request)))
  "Returns md5sum for a message object of type 'set_string-request"
  "546971982e3fbbd5a41e60fb6432e357")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_string-request>)))
  "Returns full string definition for message of type '<set_string-request>"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_string-request)))
  "Returns full string definition for message of type 'set_string-request"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_string-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_string-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_string-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude set_string-response.msg.html

(cl:defclass <set_string-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass set_string-response (<set_string-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_string-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_string-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iri_adc_msgs-srv:<set_string-response> is deprecated: use iri_adc_msgs-srv:set_string-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <set_string-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-srv:success-val is deprecated.  Use iri_adc_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <set_string-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iri_adc_msgs-srv:message-val is deprecated.  Use iri_adc_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_string-response>) ostream)
  "Serializes a message object of type '<set_string-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_string-response>) istream)
  "Deserializes a message object of type '<set_string-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_string-response>)))
  "Returns string type for a service object of type '<set_string-response>"
  "iri_adc_msgs/set_stringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_string-response)))
  "Returns string type for a service object of type 'set_string-response"
  "iri_adc_msgs/set_stringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_string-response>)))
  "Returns md5sum for a message object of type '<set_string-response>"
  "546971982e3fbbd5a41e60fb6432e357")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_string-response)))
  "Returns md5sum for a message object of type 'set_string-response"
  "546971982e3fbbd5a41e60fb6432e357")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_string-response>)))
  "Returns full string definition for message of type '<set_string-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_string-response)))
  "Returns full string definition for message of type 'set_string-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_string-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_string-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_string-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_string)))
  'set_string-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_string)))
  'set_string-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_string)))
  "Returns string type for a service object of type '<set_string>"
  "iri_adc_msgs/set_string")