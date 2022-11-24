
(cl:in-package :asdf)

(defsystem "iri_model_car_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "encoders" :depends-on ("_package_encoders"))
    (:file "_package_encoders" :depends-on ("_package"))
  ))