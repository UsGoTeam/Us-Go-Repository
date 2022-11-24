
(cl:in-package :asdf)

(defsystem "iri_base_driver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SensorLevels" :depends-on ("_package_SensorLevels"))
    (:file "_package_SensorLevels" :depends-on ("_package"))
  ))