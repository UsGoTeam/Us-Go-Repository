;; Auto-generated. Do not edit!


(when (boundp 'iri_adc_msgs::adc_juryResult)
  (if (not (find-package "IRI_ADC_MSGS"))
    (make-package "IRI_ADC_MSGS"))
  (shadow 'adc_juryResult (find-package "IRI_ADC_MSGS")))
(unless (find-package "IRI_ADC_MSGS::ADC_JURYRESULT")
  (make-package "IRI_ADC_MSGS::ADC_JURYRESULT"))

(in-package "ROS")
;;//! \htmlinclude adc_juryResult.msg.html


(defclass iri_adc_msgs::adc_juryResult
  :super ros::object
  :slots ())

(defmethod iri_adc_msgs::adc_juryResult
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

(setf (get iri_adc_msgs::adc_juryResult :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get iri_adc_msgs::adc_juryResult :datatype-) "iri_adc_msgs/adc_juryResult")
(setf (get iri_adc_msgs::adc_juryResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result

")



(provide :iri_adc_msgs/adc_juryResult "d41d8cd98f00b204e9800998ecf8427e")


