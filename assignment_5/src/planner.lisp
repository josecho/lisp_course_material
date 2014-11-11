;;; Welcome to the assignment 5 of "Robot Progamming with Lisp".
;;; This assignment is a classical planner which tries to find
;;; a sequence of actions which brings you from initial state
;;; to goal state.

;;; Definitions:
;;; * A state is a set of conditions, e.g. "(:at-home :be-hungry :have-money)"
;;;   Where SET is an important word here: no duplicate conditions are allowed.
;;; * An action is a mapping from one state to another state.
;;;   It is an object of type ACTION.
;;; A goal state is achieved when current-state is a superset of the goal.
;;; If the search went deeper in the search tree than the +limit+, backtrack.

;;; Useful functions to keep in mind:
;;; SUBSETP - checks if first argument is a subset of second argument
;;; UNION and SET-DIFFERENCE - operations on sets
;;; RETURN-FROM - returns from a function
;;; REMOVE-IF-NOT - filters a list according to function

(in-package :planner)

(defconstant +limit+ 5 "If your computer is slow consider lowering this value.")

(defun substate-p (state-1 state-2)
  "Checks if `state-1' is a subset of `state-2'"
  ;; TODO
  )

(defun applicable-p (state action)
  "Checks if preconditions of `action' are met in `state'."
  ;; TODO
  )

(defun applicable-actions (state)
  "Returns a list of all applicable to `state' actions."
  ;; TODO
  )

(defun apply-action (state action &key check?)
  "Returns a new state that results from applying `action' on `state'.
If `check?' is true, first checks if action is applicable.
If it is not, returns NIL."
  ;; TODO: check, remove DELS-CONDITIONS, add ADDS-CONDITIONS avoiding duplicates.
  )

;;; Feel free to change the signature of this particular function if you want to.
(defun plan-one-step (actions-to-goal current-state actions-to-try goal-state level)
  "Plans one step.
Returns a list of action names on the path to goal if one was found or NIL.
`current-state' and `goal-state' are lists of conditions,
`actions-to-try' is a list of actions applicable in `current-state'
that haven't been tried out (traversed in the tree) yet,
`level' is an integer representing the recursion depth.
`actions-to-goal' are the actions tried out on the path so far."
  ;; TODO.
  ;; Tip: for traversing the tree horizontally you're not forced to use recursion.
)

(defun plan (&key
              (current-state (error "Current state unspecified."))
              (goal-state (error "Goal state unspecified")))
  "Takes the current state and the goal state (both lists of state
   symbols) and returns the sequence of actions which leads from the
   current to the goal state."
  (reverse (plan-one-step '() current-state (applicable-actions current-state) goal-state 0)))

;;; If you're done with the assignment and want to improve your solution,
;;; consider adding checks on cycles. Also consider using a different approach
;;; than the depth-first search defined by the function signatures here.
