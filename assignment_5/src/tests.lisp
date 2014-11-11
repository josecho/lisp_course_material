
(in-package :planner)

(trace plan-one-step)

(defun general-test (current-state correct-path goal-state)
  (let ((result-path (plan :current-state current-state :goal-state goal-state)))
    (format t "wanted: ~a~%" correct-path)
    (format t "got: ~a~%" result-path)))

(defun test-simple-case ()
  (general-test '(at-shop have-money)
                '(buy-stuff)
                '(have-stuff)))

(defun test-depth-of-two ()
  (general-test '(at-station-1 have-money)
                '(buy-ticket station-1->2)
                '(at-station-2)))

(defun test-depth-of-three ()
  (general-test '(at-home have-money)
                '(go-home->station buy-ticket station-1->3 go-station->uni hear-lecture)
                '(be-smart)))

(defun test-impossible ()
  (general-test '(at-home have-money)
                '()
                '(have-stuff be-smart)))
