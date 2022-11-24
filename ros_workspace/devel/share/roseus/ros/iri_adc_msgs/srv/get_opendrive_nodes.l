;; Auto-generated. Do not edit!


(when (boundp 'iri_adc_msgs::get_opendrive_nodes)
  (if (not (find-package "IRI_ADC_MSGS"))
    (make-package "IRI_ADC_MSGS"))
  (shadow 'get_opendrive_nodes (find-package "IRI_ADC_MSGS")))
(unless (find-package "IRI_ADC_MSGS::GET_OPENDRIVE_NODES")
  (make-package "IRI_ADC_MSGS::GET_OPENDRIVE_NODES"))
(unless (find-package "IRI_ADC_MSGS::GET_OPENDRIVE_NODESREQUEST")
  (make-package "IRI_ADC_MSGS::GET_OPENDRIVE_NODESREQUEST"))
(unless (find-package "IRI_ADC_MSGS::GET_OPENDRIVE_NODESRESPONSE")
  (make-package "IRI_ADC_MSGS::GET_OPENDRIVE_NODESRESPONSE"))

(in-package "ROS")





(defclass iri_adc_msgs::get_opendrive_nodesRequest
  :super ros::object
  :slots ())

(defmethod iri_adc_msgs::get_opendrive_nodesRequest
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

(defclass iri_adc_msgs::get_opendrive_nodesResponse
  :super ros::object
  :slots (_opendrive_nodes ))

(defmethod iri_adc_msgs::get_opendrive_nodesResponse
  (:init
   (&key
    ((:opendrive_nodes __opendrive_nodes) (instance iri_adc_msgs::adc_opendrive_nodes :init))
    )
   (send-super :init)
   (setq _opendrive_nodes __opendrive_nodes)
   self)
  (:opendrive_nodes
   (&rest __opendrive_nodes)
   (if (keywordp (car __opendrive_nodes))
       (send* _opendrive_nodes __opendrive_nodes)
     (progn
       (if __opendrive_nodes (setq _opendrive_nodes (car __opendrive_nodes)))
       _opendrive_nodes)))
  (:serialization-length
   ()
   (+
    ;; iri_adc_msgs/adc_opendrive_nodes _opendrive_nodes
    (send _opendrive_nodes :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; iri_adc_msgs/adc_opendrive_nodes _opendrive_nodes
       (send _opendrive_nodes :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; iri_adc_msgs/adc_opendrive_nodes _opendrive_nodes
     (send _opendrive_nodes :deserialize buf ptr-) (incf ptr- (send _opendrive_nodes :serialization-length))
   ;;
   self)
  )

(defclass iri_adc_msgs::get_opendrive_nodes
  :super ros::object
  :slots ())

(setf (get iri_adc_msgs::get_opendrive_nodes :md5sum-) "5aeb03ca3f6c21b8df58026d567d3563")
(setf (get iri_adc_msgs::get_opendrive_nodes :datatype-) "iri_adc_msgs/get_opendrive_nodes")
(setf (get iri_adc_msgs::get_opendrive_nodes :request) iri_adc_msgs::get_opendrive_nodesRequest)
(setf (get iri_adc_msgs::get_opendrive_nodes :response) iri_adc_msgs::get_opendrive_nodesResponse)

(defmethod iri_adc_msgs::get_opendrive_nodesRequest
  (:response () (instance iri_adc_msgs::get_opendrive_nodesResponse :init)))

(setf (get iri_adc_msgs::get_opendrive_nodesRequest :md5sum-) "5aeb03ca3f6c21b8df58026d567d3563")
(setf (get iri_adc_msgs::get_opendrive_nodesRequest :datatype-) "iri_adc_msgs/get_opendrive_nodesRequest")
(setf (get iri_adc_msgs::get_opendrive_nodesRequest :definition-)
      "---
iri_adc_msgs/adc_opendrive_nodes opendrive_nodes


================================================================================
MSG: iri_adc_msgs/adc_opendrive_nodes
Header header
uint32[] nodes

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
")

(setf (get iri_adc_msgs::get_opendrive_nodesResponse :md5sum-) "5aeb03ca3f6c21b8df58026d567d3563")
(setf (get iri_adc_msgs::get_opendrive_nodesResponse :datatype-) "iri_adc_msgs/get_opendrive_nodesResponse")
(setf (get iri_adc_msgs::get_opendrive_nodesResponse :definition-)
      "---
iri_adc_msgs/adc_opendrive_nodes opendrive_nodes


================================================================================
MSG: iri_adc_msgs/adc_opendrive_nodes
Header header
uint32[] nodes

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
")



(provide :iri_adc_msgs/get_opendrive_nodes "5aeb03ca3f6c21b8df58026d567d3563")


