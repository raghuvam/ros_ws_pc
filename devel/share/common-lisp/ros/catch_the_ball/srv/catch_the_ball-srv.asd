
(cl:in-package :asdf)

(defsystem "catch_the_ball-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Game" :depends-on ("_package_Game"))
    (:file "_package_Game" :depends-on ("_package"))
    (:file "Throw" :depends-on ("_package_Throw"))
    (:file "_package_Throw" :depends-on ("_package"))
  ))