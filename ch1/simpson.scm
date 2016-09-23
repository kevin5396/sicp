(load "sum-iter.scm")

(define (simpson-integral f a b n)
  (define (kh k)
    (* k
       (/ (* (- b a) 1.0) n)))
  (define (next-a a)
    (+ a (kh 2))) ;; a + 2 * h
  (define (term a)
    (+ (f a)  ; y0
       (* 4 (f (+ a (kh 1))))   ; 4y1
       (f (next-a a))))   ; y2
  (* (/ (- b a)
        (* n 3.0))
     (sum term a next-a b)))
