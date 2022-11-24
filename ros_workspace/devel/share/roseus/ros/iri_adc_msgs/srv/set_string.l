;; Auto-generated. Do not edit!


(when (boundp 'iri_adc_msgs::set_string)
  (if (not (find-package "IRI_ADC_MSGS"))
    (make-package "IRI_ADC_MSGS"))
  (shadow 'set_string (find-package "IRI_ADC_MSGS")))
(unless (find-package "IRI_ADC_MSGS::SET_STRING")
  (make-package "IRI_ADC_MSGS::SET_STRING"))
(unless (find-package "IRI_ADC_MSGS::SET_STRINGREQUEST")
  (make-package "IRI_ADC_MSGS::SET_STRINGREQUEST"))
(unless (find-package "IRI_ADC_MSGS::SET_STRINGRESPONSE")
  (make-package "IRI_ADC_MSGS::SET_STRINGRESPONSE"))

(in-package "ROS")





(defclass iri_adc_msgs::set_stringRequest
  :super ros::object
  :slots (_data ))

(defmethod iri_adc_msgs::set_stringRequest
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass iri_adc_msgs::set_stringResponse
  :super ros::object
  :slots (_success _message ))

(defmethod iri_adc_msgs::set_stringResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass iri_adc_msgs::set_string
  :super ros::object
  :slots ())

(setf (get iri_adc_msgs::set_string :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get iri_adc_msgs::set_string :datatype-) "iri_adc_msgs/set_string")
(setf (get iri_adc_msgs::set_string :request) iri_adc_msgs::set_stringRequest)
(setf (get iri_adc_msgs::set_string :response) iri_adc_msgs::set_stringResponse)

(defmethod iri_adc_msgs::set_stringRequest
  (:response () (instance iri_adc_msgs::set_stringResponse :init)))

(setf (get iri_adc_msgs::set_stringRequest :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get iri_adc_msgs::set_stringRequest :datatype-) "iri_adc_msgs/set_stringRequest")
(setf (get iri_adc_msgs::set_stringRequest :definition-)
      "string data
---
bool success
string message

")

(setf (get iri_adc_msgs::set_stringResponse :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get iri_adc_msgs::set_stringResponse :datatype-) "iri_adc_msgs/set_stringResponse")
(setf (get iri_adc_msgs::set_stringResponse :definition-)
      "string data
---
bool success
string message

")



(provide :iri_adc_msgs/set_string "546971982e3fbbd5a41e60fb6432e357")


