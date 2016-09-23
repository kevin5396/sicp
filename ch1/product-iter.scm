(define (product factor a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)
              (* result
                 (factor a)))))
  (iter a 1))
