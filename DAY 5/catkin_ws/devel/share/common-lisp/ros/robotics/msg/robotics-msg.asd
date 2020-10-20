
(cl:in-package :asdf)

(defsystem "robotics-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "comp_num" :depends-on ("_package_comp_num"))
    (:file "_package_comp_num" :depends-on ("_package"))
  ))