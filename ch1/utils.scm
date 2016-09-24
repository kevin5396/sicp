(define (square x) (* x x))

(define (even? n) (= (remainder n 2) 0))

(define (expmod base exp m)
  (cond ((= exp 0)
         1)
        ((even? exp)
         (remainder
          (square
           (expmod base (/ exp 2) m))
          m))
        (else
         (remainder
          (* base
             (expmod base (- exp 1) m))
          m))))

(define (cube x) (* x x x))

(define (id x) x)

(define (inc x) (+ x 1))

(define (average x y) (/ (+ x y) 2))
