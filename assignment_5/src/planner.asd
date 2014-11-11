
(in-package :cl-user)

(asdf:defsystem planner
  :name "Classical Planner"
  :description "A classical planner using brute-force search."
  :version "0.2"
  :author "Lorenz Moesenlechner <moesenle@cs.tum.edu>"
  :maintainer "Gayane Kazhoyan <kazhoyan@cs.uni-bremen.de>"
  :licence "Public Domain"

  :components
  ((:file "package")
   (:file "infrastructure" :depends-on ("package"))
   (:file "planner" :depends-on ("package" "infrastructure"))
   (:file "domain-lisp-course" :depends-on ("package" "infrastructure"))
   (:file "tests" :depends-on ("package" "planner"))))
