(define (lg x)
  (if (< x 2)
      0
      (+ (lg (/ x 2))
         1)))
