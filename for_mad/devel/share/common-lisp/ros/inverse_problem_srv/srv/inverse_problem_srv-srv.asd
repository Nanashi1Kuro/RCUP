
(cl:in-package :asdf)

(defsystem "inverse_problem_srv-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "point_cmd" :depends-on ("_package_point_cmd"))
    (:file "_package_point_cmd" :depends-on ("_package"))
    (:file "publish_cmd" :depends-on ("_package_publish_cmd"))
    (:file "_package_publish_cmd" :depends-on ("_package"))
  ))