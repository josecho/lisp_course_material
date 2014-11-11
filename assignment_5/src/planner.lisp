
(in-package :planner)

(defun plan (&key
              (current-state (error "Current state unspecified."))
              (goal-state (error "Goal state unspecified")))
  "Takes the current state and the goal state (both lists of state
   symbols) and returns the sequence of actions which leads from the
   current to the goal state."
  (declare (ignorable current-state goal-state))
  ;; Insert here the implementation of the general problem solver
  )
