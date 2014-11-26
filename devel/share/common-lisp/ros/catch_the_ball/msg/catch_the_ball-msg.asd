
(cl:in-package :asdf)

(defsystem "catch_the_ball-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Catch" :depends-on ("_package_Catch"))
    (:file "_package_Catch" :depends-on ("_package"))
  ))