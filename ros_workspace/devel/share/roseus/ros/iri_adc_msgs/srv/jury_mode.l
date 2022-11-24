;; Auto-generated. Do not edit!


(when (boundp 'iri_adc_msgs::jury_mode)
  (if (not (find-package "IRI_ADC_MSGS"))
    (make-package "IRI_ADC_MSGS"))
  (shadow 'jury_mode (find-package "IRI_ADC_MSGS")))
(unless (find-package "IRI_ADC_MSGS::JURY_MODE")
  (make-package "IRI_ADC_MSGS::JURY_MODE"))
(unless (find-package "IRI_ADC_MSGS::JURY_MODEREQUEST")
  (make-package "IRI_ADC_MSGS::JURY_MODEREQUEST"))
(unless (find-package "IRI_ADC_MSGS::JURY_MODERESPONSE")
  (make-package "IRI_ADC_MSGS::JURY_MODERESPONSE"))

(in-package "ROS")





(defclass iri_adc_msgs::jury_modeRequest
  :super ros::object
  :slots (_enable ))

(defmethod iri_adc_msgs::jury_modeRequest
  (:init
   (&key
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _enable __enable)
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass iri_adc_msgs::jury_modeResponse
  :super ros::object
  :slots ())

(defmethod iri_adc_msgs::jury_modeResponse
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

(defclass iri_adc_msgs::jury_mode
  :super ros::object
  :slots ())

(setf (get iri_adc_msgs::jury_mode :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get iri_adc_msgs::jury_mode :datatype-) "iri_adc_msgs/jury_mode")
(setf (get iri_adc_msgs::jury_mode :request) iri_adc_msgs::jury_modeRequest)
(setf (get iri_adc_msgs::jury_mode :response) iri_adc_msgs::jury_modeResponse)

(defmethod iri_adc_msgs::jury_modeRequest
  (:response () (instance iri_adc_msgs::jury_modeResponse :init)))

(setf (get iri_adc_msgs::jury_modeRequest :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get iri_adc_msgs::jury_modeRequest :datatype-) "iri_adc_msgs/jury_modeRequest")
(setf (get iri_adc_msgs::jury_modeRequest :definition-)
      "bool enable
---

")

(setf (get iri_adc_msgs::jury_modeResponse :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get iri_adc_msgs::jury_modeResponse :datatype-) "iri_adc_msgs/jury_modeResponse")
(setf (get iri_adc_msgs::jury_modeResponse :definition-)
      "bool enable
---

")



(provide :iri_adc_msgs/jury_mode "8c1211af706069c994c06e00eb59ac9e")


