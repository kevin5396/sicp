(define (filtered-accumulate combiner filter null-value term a next b)
  (if (> a b)
      null-value
      (combiner (if (filter a)
                    (term a)
                    null-value)
                (filtered-accumulate combiner filter null-value term (next a) next b))))

(define (filtered-accumulate-iter combiner filter null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)
              (combiner (if (filter a)
                            (term a)
                            null-value)
                        result))))
  (iter a null-value))
