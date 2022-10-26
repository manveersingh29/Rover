
(cl:in-package :asdf)

(defsystem "hector_gazebo_plugins-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geographic_msgs-msg
               :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "SetBias" :depends-on ("_package_SetBias"))
    (:file "_package_SetBias" :depends-on ("_package"))
    (:file "SetReferenceGeoPose" :depends-on ("_package_SetReferenceGeoPose"))
    (:file "_package_SetReferenceGeoPose" :depends-on ("_package"))
  ))