;; Auto-generated. Do not edit!


(when (boundp 'iri_adc_msgs::adc_opendrive_nodes)
  (if (not (find-package "IRI_ADC_MSGS"))
    (make-package "IRI_ADC_MSGS"))
  (shadow 'adc_opendrive_nodes (find-package "IRI_ADC_MSGS")))
(unless (find-package "IRI_ADC_MSGS::ADC_OPENDRIVE_NODES")
  (make-package "IRI_ADC_MSGS::ADC_OPENDRIVE_NODES"))

(in-package "ROS")
;;//! \htmlinclude adc_opendrive_nodes.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass iri_adc_msgs::adc_opendrive_nodes
  :super ros::object
  :slots (_header _nodes ))

(defmethod iri_adc_msgs::adc_opendrive_nodes
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:nodes __nodes) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _nodes __nodes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:nodes
   (&optional __nodes)
   (if __nodes (setq _nodes __nodes)) _nodes)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32[] _nodes
    (* 4    (length _nodes)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32[] _nodes
     (write-long (length _nodes) s)
     (dotimes (i (length _nodes))
       (write-long (elt _nodes i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32[] _nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nodes (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _nodes i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get iri_adc_msgs::adc_opendrive_nodes :md5sum-) "845879e7f3dc3631cf0331e34f95edae")
(setf (get iri_adc_msgs::adc_opendrive_nodes :datatype-) "iri_adc_msgs/adc_opendrive_nodes")
(setf (get iri_adc_msgs::adc_opendrive_nodes :definition-)
      "Header header
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



(provide :iri_adc_msgs/adc_opendrive_nodes "845879e7f3dc3631cf0331e34f95edae")


