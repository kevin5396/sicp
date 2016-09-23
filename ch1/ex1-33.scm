(load "filtered-accumulate.scm")
(load "smallest-divisor.scm")
(load "utils.scm")

(define (square-of-primes a b)
  (filtered-accumulate + prime? 0 square a inc b))

(define (product-of-relative-prime-less-than n)
  (define (filter a)
    (and (= (gcd a n) 1)
         (< a n)))
  (filtered-accumulate * filter 1 id 1 inc (- n 1)))
