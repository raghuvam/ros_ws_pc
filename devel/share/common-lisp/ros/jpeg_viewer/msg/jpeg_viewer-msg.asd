
(cl:in-package :asdf)

(defsystem "jpeg_viewer-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "jpeg_info" :depends-on ("_package_jpeg_info"))
    (:file "_package_jpeg_info" :depends-on ("_package"))
  ))