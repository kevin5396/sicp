(load "damping.scm")
(load "fixed-point.scm")

(define (damped-nth-root n times)
  (lambda (x)
    (fixed-point
     (n-average-damping (lambda (y) (/ x (expt y (- n 1))))
                        times)
     1.0)))
