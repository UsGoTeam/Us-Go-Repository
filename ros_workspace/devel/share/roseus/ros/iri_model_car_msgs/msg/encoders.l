;; Auto-generated. Do not edit!


(when (boundp 'iri_model_car_msgs::encoders)
  (if (not (find-package "IRI_MODEL_CAR_MSGS"))
    (make-package "IRI_MODEL_CAR_MSGS"))
  (shadow 'encoders (find-package "IRI_MODEL_CAR_MSGS")))
(unless (find-package "IRI_MODEL_CAR_MSGS::ENCODERS")
  (make-package "IRI_MODEL_CAR_MSGS::ENCODERS"))

(in-package "ROS")
;;//! \htmlinclude encoders.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass iri_model_car_msgs::encoders
  :super ros::object
  :slots (_header _left_ticks _left_forward _right_ticks _right_forward ))

(defmethod iri_model_car_msgs::encoders
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left_ticks __left_ticks) 0)
    ((:left_forward __left_forward) nil)
    ((:right_ticks __right_ticks) 0)
    ((:right_forward __right_forward) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _left_ticks (round __left_ticks))
   (setq _left_forward __left_forward)
   (setq _right_ticks (round __right_ticks))
   (setq _right_forward __right_forward)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left_ticks
   (&optional __left_ticks)
   (if __left_ticks (setq _left_ticks __left_ticks)) _left_ticks)
  (:left_forward
   (&optional __left_forward)
   (if __left_forward (setq _left_forward __left_forward)) _left_forward)
  (:right_ticks
   (&optional __right_ticks)
   (if __right_ticks (setq _right_ticks __right_ticks)) _right_ticks)
  (:right_forward
   (&optional __right_forward)
   (if __right_forward (setq _right_forward __right_forward)) _right_forward)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _left_ticks
    4
    ;; bool _left_forward
    1
    ;; int32 _right_ticks
    4
    ;; bool _right_forward
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _left_ticks
       (write-long _left_ticks s)
     ;; bool _left_forward
       (if _left_forward (write-byte -1 s) (write-byte 0 s))
     ;; int32 _right_ticks
       (write-long _right_ticks s)
     ;; bool _right_forward
       (if _right_forward (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _left_ticks
     (setq _left_ticks (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _left_forward
     (setq _left_forward (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _right_ticks
     (setq _right_ticks (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _right_forward
     (setq _right_forward (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get iri_model_car_msgs::encoders :md5sum-) "04e73434e714ecf842b1891215a2b24e")
(setf (get iri_model_car_msgs::encoders :datatype-) "iri_model_car_msgs/encoders")
(setf (get iri_model_car_msgs::encoders :definition-)
      "Header header
int32 left_ticks
bool left_forward
int32 right_ticks
bool right_forward


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



(provide :iri_model_car_msgs/encoders "04e73434e714ecf842b1891215a2b24e")


