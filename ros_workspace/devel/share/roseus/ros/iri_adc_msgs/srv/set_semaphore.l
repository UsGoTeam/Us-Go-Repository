;; Auto-generated. Do not edit!


(when (boundp 'iri_adc_msgs::set_semaphore)
  (if (not (find-package "IRI_ADC_MSGS"))
    (make-package "IRI_ADC_MSGS"))
  (shadow 'set_semaphore (find-package "IRI_ADC_MSGS")))
(unless (find-package "IRI_ADC_MSGS::SET_SEMAPHORE")
  (make-package "IRI_ADC_MSGS::SET_SEMAPHORE"))
(unless (find-package "IRI_ADC_MSGS::SET_SEMAPHOREREQUEST")
  (make-package "IRI_ADC_MSGS::SET_SEMAPHOREREQUEST"))
(unless (find-package "IRI_ADC_MSGS::SET_SEMAPHORERESPONSE")
  (make-package "IRI_ADC_MSGS::SET_SEMAPHORERESPONSE"))

(in-package "ROS")





(intern "*SEM_OFF*" (find-package "IRI_ADC_MSGS::SET_SEMAPHOREREQUEST"))
(shadow '*SEM_OFF* (find-package "IRI_ADC_MSGS::SET_SEMAPHOREREQUEST"))
(defconstant iri_adc_msgs::set_semaphoreRequest::*SEM_OFF* 0)
(intern "*SEM_RED*" (find-package "IRI_ADC_MSGS::SET_SEMAPHOREREQUEST"))
(shadow '*SEM_RED* (find-package "IRI_ADC_MSGS::SET_SEMAPHOREREQUEST"))
(defconstant iri_adc_msgs::set_semaphoreRequest::*SEM_RED* 1)
(intern "*SEM_GREEN*" (find-package "IRI_ADC_MSGS::SET_SEMAPHOREREQUEST"))
(shadow '*SEM_GREEN* (find-package "IRI_ADC_MSGS::SET_SEMAPHOREREQUEST"))
(defconstant iri_adc_msgs::set_semaphoreRequest::*SEM_GREEN* 2)
(intern "*SEM_ORANGE_BLINK*" (find-package "IRI_ADC_MSGS::SET_SEMAPHOREREQUEST"))
(shadow '*SEM_ORANGE_BLINK* (find-package "IRI_ADC_MSGS::SET_SEMAPHOREREQUEST"))
(defconstant iri_adc_msgs::set_semaphoreRequest::*SEM_ORANGE_BLINK* 3)
(defclass iri_adc_msgs::set_semaphoreRequest
  :super ros::object
  :slots (_color ))

(defmethod iri_adc_msgs::set_semaphoreRequest
  (:init
   (&key
    ((:color __color) 0)
    )
   (send-super :init)
   (setq _color (round __color))
   self)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:serialization-length
   ()
   (+
    ;; uint8 _color
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _color
       (write-byte _color s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _color
     (setq _color (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass iri_adc_msgs::set_semaphoreResponse
  :super ros::object
  :slots ())

(defmethod iri_adc_msgs::set_semaphoreResponse
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

(defclass iri_adc_msgs::set_semaphore
  :super ros::object
  :slots ())

(setf (get iri_adc_msgs::set_semaphore :md5sum-) "3a2c1112df73325ba59340ec2e040a3c")
(setf (get iri_adc_msgs::set_semaphore :datatype-) "iri_adc_msgs/set_semaphore")
(setf (get iri_adc_msgs::set_semaphore :request) iri_adc_msgs::set_semaphoreRequest)
(setf (get iri_adc_msgs::set_semaphore :response) iri_adc_msgs::set_semaphoreResponse)

(defmethod iri_adc_msgs::set_semaphoreRequest
  (:response () (instance iri_adc_msgs::set_semaphoreResponse :init)))

(setf (get iri_adc_msgs::set_semaphoreRequest :md5sum-) "3a2c1112df73325ba59340ec2e040a3c")
(setf (get iri_adc_msgs::set_semaphoreRequest :datatype-) "iri_adc_msgs/set_semaphoreRequest")
(setf (get iri_adc_msgs::set_semaphoreRequest :definition-)
      "uint8 SEM_OFF = 0
uint8 SEM_RED = 1
uint8 SEM_GREEN = 2
uint8 SEM_ORANGE_BLINK = 3

uint8 color
---


")

(setf (get iri_adc_msgs::set_semaphoreResponse :md5sum-) "3a2c1112df73325ba59340ec2e040a3c")
(setf (get iri_adc_msgs::set_semaphoreResponse :datatype-) "iri_adc_msgs/set_semaphoreResponse")
(setf (get iri_adc_msgs::set_semaphoreResponse :definition-)
      "uint8 SEM_OFF = 0
uint8 SEM_RED = 1
uint8 SEM_GREEN = 2
uint8 SEM_ORANGE_BLINK = 3

uint8 color
---


")



(provide :iri_adc_msgs/set_semaphore "3a2c1112df73325ba59340ec2e040a3c")


