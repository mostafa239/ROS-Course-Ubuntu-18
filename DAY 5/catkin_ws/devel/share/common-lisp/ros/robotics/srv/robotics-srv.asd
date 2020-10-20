
(cl:in-package :asdf)

(defsystem "robotics-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "num_of_words" :depends-on ("_package_num_of_words"))
    (:file "_package_num_of_words" :depends-on ("_package"))
  ))