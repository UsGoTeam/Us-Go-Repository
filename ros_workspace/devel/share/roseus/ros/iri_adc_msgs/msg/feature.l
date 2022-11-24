;; Auto-generated. Do not edit!


(when (boundp 'iri_adc_msgs::feature)
  (if (not (find-package "IRI_ADC_MSGS"))
    (make-package "IRI_ADC_MSGS"))
  (shadow 'feature (find-package "IRI_ADC_MSGS")))
(unless (find-package "IRI_ADC_MSGS::FEATURE")
  (make-package "IRI_ADC_MSGS::FEATURE"))

(in-package "ROS")
;;//! \htmlinclude feature.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass iri_adc_msgs::feature
  :super ros::object
  :slots (_pose _probability _type ))

(defmethod iri_adc_msgs::feature
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:probability __probability) 0.0)
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _probability (float __probability))
   (setq _type (round __type))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float32 _probability
    4
    ;; int32 _type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float32 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _type
       (write-long _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float32 _probability
     (setq _probability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get iri_adc_msgs::feature :md5sum-) "03a94f020f11a010a1eef2a8da3da4fd")
(setf (get iri_adc_msgs::feature :datatype-) "iri_adc_msgs/feature")
(setf (get iri_adc_msgs::feature :definition-)
      "geometry_msgs/Pose pose
float32 probability
int32 type

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



(provide :iri_adc_msgs/feature "03a94f020f11a010a1eef2a8da3da4fd")


