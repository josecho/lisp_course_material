
(in-package :planner)

(in-domain :lisp-course)

(def-action buy-ticket
    :preconditions '(have-money)
    :adds-conditions '(have-ticket)
    :dels-conditions '(have-money))

(def-action station-1->2
    :preconditions '(at-station-1 have-ticket)
    :adds-conditions '(at-station-2)
    :dels-conditions '(at-station-1 have-ticket))

(def-action station-2->1
    :preconditions '(at-station-2 have-ticket)
    :adds-conditions '(at-station-1)
    :dels-conditions '(at-station-2 have-ticket))

(def-action station-2->3
    :preconditions '(at-station-2 have-ticket)
    :adds-conditions '(at-station-3)
    :dels-conditions '(at-station-2 have-ticket))

(def-action station-3->2
    :preconditions '(at-station-3 have-ticket)
    :adds-conditions '(at-station-2)
    :dels-conditions '(at-station-3 have-ticket))

(def-action station-1->3
    :preconditions '(at-station-1 have-ticket)
    :adds-conditions '(at-station-3)
    :dels-conditions '(at-station-1 have-ticket))

(def-action station-3->1
    :preconditions '(at-station-3 have-ticket)
    :adds-conditions '(at-station-1)
    :dels-conditions '(at-station-3 have-ticket))

(def-action go-home->station
    :preconditions '(at-home)
    :adds-conditions '(at-station-1)
    :dels-conditions '(at-home))

(def-action go-station->home
    :preconditions '(at-station-1)
    :adds-conditions '(at-home)
    :dels-conditions '(at-station-1))

(def-action go-station->shop
    :preconditions '(at-station-2)
    :adds-conditions '(at-shop)
    :dels-conditions '(at-station-2))

(def-action go-shop->station
    :preconditions '(at-shop)
    :adds-conditions '(at-station-2)
    :dels-conditions '(at-shop))

(def-action go-station->uni
    :preconditions '(at-station-3)
    :adds-conditions '(at-uni)
    :dels-conditions '(at-station-3))

(def-action go-uni->station
    :preconditions '(at-uni)
    :adds-conditions '(at-station-3)
    :dels-conditions '(at-uni))

(def-action buy-stuff
    :preconditions '(at-shop have-money)
    :adds-conditions '(have-stuff)
    :dels-conditions '(have-money))

(def-action hear-lecture
    :preconditions '(at-uni)
    :adds-conditions '(be-smart))
