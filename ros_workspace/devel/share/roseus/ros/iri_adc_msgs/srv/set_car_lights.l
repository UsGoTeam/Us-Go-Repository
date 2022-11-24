;; Auto-generated. Do not edit!


(when (boundp 'iri_adc_msgs::set_car_lights)
  (if (not (find-package "IRI_ADC_MSGS"))
    (make-package "IRI_ADC_MSGS"))
  (shadow 'set_car_lights (find-package "IRI_ADC_MSGS")))
(unless (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTS")
  (make-package "IRI_ADC_MSGS::SET_CAR_LIGHTS"))
(unless (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTSREQUEST")
  (make-package "IRI_ADC_MSGS::SET_CAR_LIGHTSREQUEST"))
(unless (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTSRESPONSE")
  (make-package "IRI_ADC_MSGS::SET_CAR_LIGHTSRESPONSE"))

(in-package "ROS")





(intern "*CAR_OFF*" (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTSREQUEST"))
(shadow '*CAR_OFF* (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTSREQUEST"))
(defconstant iri_adc_msgs::set_car_lightsRequest::*CAR_OFF* 0)
(intern "*CAR_NORMAL_DRIVE*" (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTSREQUEST"))
(shadow '*CAR_NORMAL_DRIVE* (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTSREQUEST"))
(defconstant iri_adc_msgs::set_car_lightsRequest::*CAR_NORMAL_DRIVE* 1)
(intern "*CAR_BRAKE*" (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTSREQUEST"))
(shadow '*CAR_BRAKE* (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTSREQUEST"))
(defconstant iri_adc_msgs::set_car_lightsRequest::*CAR_BRAKE* 2)
(intern "*CAR_TURN_LEFT*" (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTSREQUEST"))
(shadow '*CAR_TURN_LEFT* (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTSREQUEST"))
(defconstant iri_adc_msgs::set_car_lightsRequest::*CAR_TURN_LEFT* 3)
(intern "*CAR_TURN_RIGHT*" (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTSREQUEST"))
(shadow '*CAR_TURN_RIGHT* (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTSREQUEST"))
(defconstant iri_adc_msgs::set_car_lightsRequest::*CAR_TURN_RIGHT* 4)
(intern "*CAR_PARKED*" (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTSREQUEST"))
(shadow '*CAR_PARKED* (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTSREQUEST"))
(defconstant iri_adc_msgs::set_car_lightsRequest::*CAR_PARKED* 5)
(intern "*CAR_EMERGENCY*" (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTSREQUEST"))
(shadow '*CAR_EMERGENCY* (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTSREQUEST"))
(defconstant iri_adc_msgs::set_car_lightsRequest::*CAR_EMERGENCY* 6)
(intern "*CAR_AMBULANCE*" (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTSREQUEST"))
(shadow '*CAR_AMBULANCE* (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTSREQUEST"))
(defconstant iri_adc_msgs::set_car_lightsRequest::*CAR_AMBULANCE* 7)
(intern "*CAR_CHARGING*" (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTSREQUEST"))
(shadow '*CAR_CHARGING* (find-package "IRI_ADC_MSGS::SET_CAR_LIGHTSREQUEST"))
(defconstant iri_adc_msgs::set_car_lightsRequest::*CAR_CHARGING* 8)
(defclass iri_adc_msgs::set_car_lightsRequest
  :super ros::object
  :slots (_lights ))

(defmethod iri_adc_msgs::set_car_lightsRequest
  (:init
   (&key
    ((:lights __lights) 0)
    )
   (send-super :init)
   (setq _lights (round __lights))
   self)
  (:lights
   (&optional __lights)
   (if __lights (setq _lights __lights)) _lights)
  (:serialization-length
   ()
   (+
    ;; uint8 _lights
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _lights
       (write-byte _lights s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _lights
     (setq _lights (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass iri_adc_msgs::set_car_lightsResponse
  :super ros::object
  :slots ())

(defmethod iri_adc_msgs::set_car_lightsResponse
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

(defclass iri_adc_msgs::set_car_lights
  :super ros::object
  :slots ())

(setf (get iri_adc_msgs::set_car_lights :md5sum-) "cbf39d5601e4232b41019dc5a0264ee4")
(setf (get iri_adc_msgs::set_car_lights :datatype-) "iri_adc_msgs/set_car_lights")
(setf (get iri_adc_msgs::set_car_lights :request) iri_adc_msgs::set_car_lightsRequest)
(setf (get iri_adc_msgs::set_car_lights :response) iri_adc_msgs::set_car_lightsResponse)

(defmethod iri_adc_msgs::set_car_lightsRequest
  (:response () (instance iri_adc_msgs::set_car_lightsResponse :init)))

(setf (get iri_adc_msgs::set_car_lightsRequest :md5sum-) "cbf39d5601e4232b41019dc5a0264ee4")
(setf (get iri_adc_msgs::set_car_lightsRequest :datatype-) "iri_adc_msgs/set_car_lightsRequest")
(setf (get iri_adc_msgs::set_car_lightsRequest :definition-)
      "uint8 CAR_OFF = 0
uint8 CAR_NORMAL_DRIVE = 1
uint8 CAR_BRAKE = 2
uint8 CAR_TURN_LEFT = 3
uint8 CAR_TURN_RIGHT = 4
uint8 CAR_PARKED = 5
uint8 CAR_EMERGENCY = 6
uint8 CAR_AMBULANCE = 7
uint8 CAR_CHARGING = 8

uint8 lights
---


")

(setf (get iri_adc_msgs::set_car_lightsResponse :md5sum-) "cbf39d5601e4232b41019dc5a0264ee4")
(setf (get iri_adc_msgs::set_car_lightsResponse :datatype-) "iri_adc_msgs/set_car_lightsResponse")
(setf (get iri_adc_msgs::set_car_lightsResponse :definition-)
      "uint8 CAR_OFF = 0
uint8 CAR_NORMAL_DRIVE = 1
uint8 CAR_BRAKE = 2
uint8 CAR_TURN_LEFT = 3
uint8 CAR_TURN_RIGHT = 4
uint8 CAR_PARKED = 5
uint8 CAR_EMERGENCY = 6
uint8 CAR_AMBULANCE = 7
uint8 CAR_CHARGING = 8

uint8 lights
---


")



(provide :iri_adc_msgs/set_car_lights "cbf39d5601e4232b41019dc5a0264ee4")


