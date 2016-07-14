(load "square-root.scm")

(define (good-enough? guess x)
  (< (abs (/ (-
              (square guess)
              x)
             x))
     0.001))
