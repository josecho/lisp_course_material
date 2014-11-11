
(in-package :planner)

(defun general-test (current-state goal-state correct-path)
  (let ((result-path (plan :current-state current-state :goal-state goal-state)))
    (unless (equal result-path correct-path)
      (error "Somehow the resulting action sequence doesn't match the correct one."))))

(defun test-simple-case ()
  (general-test '(at-shop have-money)
                '(have-stuff)
                '(buy-stuff)))
