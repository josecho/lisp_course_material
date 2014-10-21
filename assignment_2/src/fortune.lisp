;;; Welcome to Assignment 2 of the "Robot Programming with Lisp" course.
;;; Below you'll find the skeleton code for a fortune teller program:
;;; depending on the data the user gives about himself / herself,
;;; the program tries to generate realistic fortune-telling.

;;; 1. First, you want to interactively ask the person what their name is.
;;;    The answer should be stored into the variable called `*name*'.
;;; 2. Next, you want to ask for their age. The format should be "dd.mm.yyyy".
;;;    Make sure the entered values satisfy the format and are integer.
;;;    Otherwise, throw a simple error.
;;; 3. Next, calculate the age of the person from their birth date.
;;; 4. The fortune teller will also need to know the person's hobbies.
;;;    For that the person should be prompted if they like a certain
;;;    hobby or not and should answer with the letter "y" or "n".
;;;    The list of hobbies is stored in *hobbies*.
;;; 5. In the end, the program should print the following:
;;;    "*name*, *fortune*(i, j)~%",
;;;    where *name* is person's name, ~% is a newline character in "(format ...)"
;;;    statemenets, and *fortune*(i, j) is one of the entries in the
;;;    *fortune* array, depending on the persons's age (row index) and
;;;    the hobby the person likes (column index). If the person likes
;;;    more than one of the hobbies, the message is chosen randomly
;;;    from the ones applicable for the person.

;;; Hints:
;;; - "(read-line)" returns a STRING and "(read)" returns a SYMBOL
;;; - In addition to functions listed in the lecture,
;;;   you might need to use "(subseq string start-index &optional end-index)"
;;;   and "(parse-integer integer-value)"
;;; - To throw a simple error you can use: "(error "Meaningful error message.~%")".
;;; - To find out current date you might want to use "(get-decoded-time)"
;;;   together with "(multiple-value-bind ...)". Use "C-c C-d h" to find
;;;   more info.

(defvar *name* nil)
(defvar *birth-date* nil)
(defvar *age* nil)
(defvar *hobbies* '(football programming gaming))
(defvar *fortune*
  (list
   ;; age <= 10
   (list "your life is a mystery to me..." ; <- hobby #1
         "your life is a mystery to me..." ; <- hobby #2
         "your life is a mystery to me...") ; <- hobby #3
   ;; age <= 20
   (list "you're gonna twist your ankle today!" ; <- hobby #1
         "you will discover a new programming language today!" ; <- hobby #2
         "are you into WOW?...") ; <- hobby #3
   ;; age <= 30
   (list "there is gonna be a big game next month!" ; <- hobby #1
         "you will program in Lisp soon!" ; <- hobby #2
         "this weekend you'll have a great crowd to play with!") ; hobby #3
   ;; otherwise
   (list "do you seriously believe in this?" ; <- hobby #1
         "I'm just a random sentence generator..." ; <- hobby #2
         "I wish I were a fortune cookie..."))) ; <- hobby #3

(defun tell-fortune ()
  ;; TODO: the implementation should go into this function.
)
