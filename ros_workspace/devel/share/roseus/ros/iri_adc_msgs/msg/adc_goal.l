;; Auto-generated. Do not edit!


(when (boundp 'iri_adc_msgs::adc_goal)
  (if (not (find-package "IRI_ADC_MSGS"))
    (make-package "IRI_ADC_MSGS"))
  (shadow 'adc_goal (find-package "IRI_ADC_MSGS")))
(unless (find-package "IRI_ADC_MSGS::ADC_GOAL")
  (make-package "IRI_ADC_MSGS::ADC_GOAL"))

(in-package "ROS")
;;//! \htmlinclude adc_goal.msg.html


(intern "*PASSTHROUGH_GOAL*" (find-package "IRI_ADC_MSGS::ADC_GOAL"))
(shadow '*PASSTHROUGH_GOAL* (find-package "IRI_ADC_MSGS::ADC_GOAL"))
(defconstant iri_adc_msgs::adc_goal::*PASSTHROUGH_GOAL* 0)
(intern "*STOP_GOAL*" (find-package "IRI_ADC_MSGS::ADC_GOAL"))
(shadow '*STOP_GOAL* (find-package "IRI_ADC_MSGS::ADC_GOAL"))
(defconstant iri_adc_msgs::adc_goal::*STOP_GOAL* 1)
(intern "*PARKING_GOAL*" (find-package "IRI_ADC_MSGS::ADC_GOAL"))
(shadow '*PARKING_GOAL* (find-package "IRI_ADC_MSGS::ADC_GOAL"))
(defconstant iri_adc_msgs::adc_goal::*PARKING_GOAL* 2)
(defclass iri_adc_msgs::adc_goal
  :super ros::object
  :slots (_id _x _y _yaw _type ))

(defmethod iri_adc_msgs::adc_goal
  (:init
   (&key
    ((:id __id) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:yaw __yaw) 0.0)
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _yaw (float __yaw))
   (setq _type (round __type))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _yaw
    4
    ;; int32 _type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _type
       (write-long _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get iri_adc_msgs::adc_goal :md5sum-) "997a694e5c5bce1148d1ef6403aee244")
(setf (get iri_adc_msgs::adc_goal :datatype-) "iri_adc_msgs/adc_goal")
(setf (get iri_adc_msgs::adc_goal :definition-)
      "#type definitions
uint8 PASSTHROUGH_GOAL=0
uint8 STOP_GOAL=1
uint8 PARKING_GOAL=2

string id       # goal identifier
float32 x       # x coordinates in meters [m]
float32 y       # y coordinate in meters [m]
float32 yaw     # yaw orientation in radians [rad]
int32 type      # see type definitions above

")



(provide :iri_adc_msgs/adc_goal "997a694e5c5bce1148d1ef6403aee244")


