;;; Definitions:
;;; * A state is a list of conditions, e.g. "(:at-home :be-hungry :have-money)"
;;; * An action is a mapping from one state to another state.

(in-package :planner)

(defvar *problem-domains* (make-hash-table :test 'eq)
  "A hash-table of all known domains. Key is a domain name,
value is a list of all actions possible in that domain.")
(defvar *current-domain* :default
  "The name of the domain to be used per default.")

(defstruct action
  "An action can be performed in a certain state (which is a list of conditions)
only if all its preconditions are met. When performed, it can add and delete
conditions to/from that state."
  (name (error "An action has to have a name.") :type symbol)
  (preconditions '() :type list)
  (adds-conditions '() :type list)
  (dels-conditions '() :type list))

(defmacro in-domain (domain)
  `(eval-when (:compile-toplevel :load-toplevel)
     (setf *current-domain* ,domain)))

(defmacro with-domain (domain &body body)
  `(let ((*current-domain* ,domain))
     (declare (special *current-domain*))
     ,@body))

(defmacro def-action (name &key
                      (domain *current-domain*)
                      (preconditions (error "No preconditions."))
                      adds-conditions dels-conditions)
  `(eval-when (:load-toplevel)
     (pushnew (make-action
               :name ',name
               :preconditions ,preconditions
               :adds-conditions ,adds-conditions
               :dels-conditions ,dels-conditions)
              (gethash ',domain *problem-domains*)
              :key #'action-name)))

(defun get-actions (&optional (domain *current-domain*))
  (gethash domain *problem-domains*))

(defun get-action (name &optional (domain *current-domain*))
  (find name (get-actions domain) :key #'action-name))
