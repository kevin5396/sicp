(load "cont-frac.scm")
(load "utils.scm")

(define (tan-cf x k)
  (define (N i)
    (if (= i 1)
        x
        (- (square x))))
  (define (D i)
    (- (* 2 i) 1))
  (exact->inexact (cont-frac N D k)))
