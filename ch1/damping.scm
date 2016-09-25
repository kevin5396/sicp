(load "utils.scm")
(load "repeat.scm")
(define (average-damping f)
  (lambda (x) (average x (f x))))
(define (n-average-damping f n)
  ((repeat average-damping n) f))