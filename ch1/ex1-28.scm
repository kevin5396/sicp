(load "utils.scm")

(define (non-trivial-square-root? num m)
  (and (not (= num 1))
       (not (= num (- m 1)))
       (= 1 (remainder
             (square num)
             m))))
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (if (non-trivial-square-root? base m)
             0
             (remainder
              (square
               (expmod base (/ exp 2) m))
              m)))
        (else
         (remainder
          (* base
             (expmod base (- exp 1) m))
          m))))

(define (miller-rabin-test n)
  (= (expmod (+ 1 (random (- n 1))) (- n 1) n) 1))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((miller-rabin-test n) (fast-prime? n (- times 1)))
        (else false)))

(define (do-test n)
  (display n)
  (if (fast-prime? n 50)
      (display " is prime.\n")
      (display " is not a prime.\n")))
(do-test 561)
(do-test 1105)
(do-test 1729)
(do-test 2465)
(do-test 2821)
(do-test 6601)

(display "test true primes\n")
(do-test 1000000007)
(do-test 1000000009)
(do-test 1000000021)
(do-test 10000000019)
