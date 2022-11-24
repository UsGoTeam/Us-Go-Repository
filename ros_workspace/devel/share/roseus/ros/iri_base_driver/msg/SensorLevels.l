;; Auto-generated. Do not edit!


(when (boundp 'iri_base_driver::SensorLevels)
  (if (not (find-package "IRI_BASE_DRIVER"))
    (make-package "IRI_BASE_DRIVER"))
  (shadow 'SensorLevels (find-package "IRI_BASE_DRIVER")))
(unless (find-package "IRI_BASE_DRIVER::SENSORLEVELS")
  (make-package "IRI_BASE_DRIVER::SENSORLEVELS"))

(in-package "ROS")
;;//! \htmlinclude SensorLevels.msg.html


(intern "*RECONFIGURE_CLOSE*" (find-package "IRI_BASE_DRIVER::SENSORLEVELS"))
(shadow '*RECONFIGURE_CLOSE* (find-package "IRI_BASE_DRIVER::SENSORLEVELS"))
(defconstant iri_base_driver::SensorLevels::*RECONFIGURE_CLOSE* 3)
(intern "*RECONFIGURE_STOP*" (find-package "IRI_BASE_DRIVER::SENSORLEVELS"))
(shadow '*RECONFIGURE_STOP* (find-package "IRI_BASE_DRIVER::SENSORLEVELS"))
(defconstant iri_base_driver::SensorLevels::*RECONFIGURE_STOP* 1)
(intern "*RECONFIGURE_RUNNING*" (find-package "IRI_BASE_DRIVER::SENSORLEVELS"))
(shadow '*RECONFIGURE_RUNNING* (find-package "IRI_BASE_DRIVER::SENSORLEVELS"))
(defconstant iri_base_driver::SensorLevels::*RECONFIGURE_RUNNING* 0)
(defclass iri_base_driver::SensorLevels
  :super ros::object
  :slots ())

(defmethod iri_base_driver::SensorLevels
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

(setf (get iri_base_driver::SensorLevels :md5sum-) "6322637bee96d5489db6e2127c47602c")
(setf (get iri_base_driver::SensorLevels :datatype-) "iri_base_driver/SensorLevels")
(setf (get iri_base_driver::SensorLevels :definition-)
      "byte RECONFIGURE_CLOSE = 3  # Parameters that need a sensor to be stopped completely when changed
byte RECONFIGURE_STOP = 1  # Parameters that need a sensor to stop streaming when changed
byte RECONFIGURE_RUNNING = 0 # Parameters that can be changed while a sensor is streaming


")



(provide :iri_base_driver/SensorLevels "6322637bee96d5489db6e2127c47602c")


