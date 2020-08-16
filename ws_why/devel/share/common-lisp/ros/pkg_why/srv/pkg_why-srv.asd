
(cl:in-package :asdf)

(defsystem "pkg_why-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "img_srv" :depends-on ("_package_img_srv"))
    (:file "_package_img_srv" :depends-on ("_package"))
  ))