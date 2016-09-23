(load "product-iter.scm")
(load "utils.scm")

(define (factorial n)
  (product id 1 inc n))

(define (pi n)
  (define (next a) (+ a 2))
  (define (factor n)
    (* (/ (- n 1) n)
       (/ (+ n 1) n)))
  (* 4.0
     (product factor 3 next n)))
