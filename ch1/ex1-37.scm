(load "cont-frac.scm")

(define (test k) ; 1 + 1/x
  (+ 1
     (cont-frac (lambda (i) 1.0)
                (lambda (i) 1.0)
                k)))
