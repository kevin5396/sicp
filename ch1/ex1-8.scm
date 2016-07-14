;; Newton's method for cube roots

(define (square x) (* x x))

(define (improve y x)
  (/ (+ (/ x
           (square y))
        (* 2 y))
     3))

(define (cube x) (* x (square x)))

(define (good-enough? guess x)
  (< (/ (abs (- (cube guess)
                x))
        x)
     0.001))

(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x) x)))

(define (cube-root x)
  (cube-iter 1.0 x))
