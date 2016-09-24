(load "fixed-point-verbose.scm")
(load "utils.scm") ; average
(define solve
  (fixed-point (lambda (x)
                 (/ (log 1000)
                    (log x)))
               2.0))

(define solve-with-average-damping
  (fixed-point (lambda (x)
                 (average x
                          (/ (log 1000)
                             (log x))))
               2.0))
