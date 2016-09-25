(define (iterative-improve good-enough? improve)
  (define (iter-improve guess)
    (if (good-enough? guess)
        guess
        (iter-improve (improve guess))))
  iter-improve)
