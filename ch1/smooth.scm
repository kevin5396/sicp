(load "compose.scm")
(load "repeat.scm")
(load "utils.scm")
(define dx 0.000001)
(define (smooth f)
  (lambda (x)
    (/ (+ (f (- x dx)) (f x) (f (+ x dx)))
       3.0)))

(define (n-fold-smooth f n)
  ((repeat smooth n) f))
