;;; Welcome to Assignment 4!
;;; This is a recursion / mapping assignment.

;;; RECURSION ;;;
;;; The following is a binary tree with no values in the intermediate nodes:

(defvar *assoc-list* '(((1 . 2) (3 . 4)) . ((5 . 6) (7 . 8))))

;;; (it should've been a constant, but is a DEFVAR for compilation simplicity)
;;; It has no NIL elements anywhere in the cons cells.
;;;
;;; In the REPL it is represented as the following:
;;; (((1 . 2) (3 . 4)) (5 . 6) (7 . 8))
;;; where the brackets on the last two cons cells are missing.
;;; Could you tell why this is so? (optional question)
;;;
;;; Using only FIRST and REST functions, traverse the binary tree in
;;; depth-first search manner and print the values in leaves.

(defun assoc-list-dfs (assoc-list)
  ;; ToDo: recursive implementation goes here.
  ;; Remember that if you want to have multiple function calls in IF,
  ;; you might need a PROGN.
  )
(trace assoc-list-dfs)

;;; Test your solution with the +assoc-list+:
(assoc-list-dfs +assoc-list+)


;;; RECURSION 2 ;;;
;;; Next, we have a binary tree structure, where each node has a left and right
;;; child and a value, e.g. '(a-left-child a-value a-right-child):

(defun left-child (node)
  (first node))
(defun value (node)
  (second node))
(defun right-child (node)
  (third node))

;;; Implement a depth-first search with in-order traversing.
;;; You can find pseudo-code to it on Wikipedia:

(defun binary-tree-dfs-lvr (a-tree)
  ;; ToDo: implementation goes here
  )

;;; Test your implementation on the following tree:

(defvar *bin-tree* '(((1) 3 ((4) 6 (7))) 8 (NIL 10 ((13) 14 NIL))))
;;; which represents
;;;              8
;;;           /     \
;;;         3         10
;;;        / \          \
;;;       1   6          14
;;;          / \        /
;;;         4   7      13
;;;

(binary-tree-dfs-lvr *bin-tree*)

;;; Write in Lisp Polish notation the following equation as a quoted list
;;; ((1 + 2) * 6) / (8 - 6)
;;; and test your DFS with the resulting expression:

(defvar *expression* '( ; ToDo: finish the expression
                       ))
(binary-tree-dfs-lvr *expression*)

;;; Now, make a minor change to your in-order traversing DFS
;;; to make it into pre-order and test it with the *expression*
(defun binary-tree-dfs-vlr (a-tree)
  ;; ToDo: implementation goes here
  )
(binary-tree-dfs-vlr *expression*)

;;; Congratulations! Your in-order traversing algorithm just
;;; did a Common Lisp code traversal for binary functions!
;;; If you extend it for functions with any number of arguments,
;;; you will implement a substantial part of a Lisp compiler.
;;; Now try to implement the same for Java syntax. (optional task)


;;; MAP / REDUCE
;;; Write in one line a function that would calculate the sum of
;;; all the sublists of a given list divided by each other.
;;; E.g. if the list is '((a b) (c d) (e)), we want (a + b) / (c + d) / e
;;; You are only allowed to use REDUCE, MAPCAR, ALEXANDRIA:CURRY and,
;;; of course, / and +.

;;; Test it with the following list:

(defvar *some-list* '((985 30 1 1 6 1) (5 6 13 8) (2 2 3 -5 6)))

