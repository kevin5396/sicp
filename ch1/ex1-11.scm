;; recursive

(define (f-recursive n) (f-rec-iter n))
(define (f-rec-iter n)
  (cond ((< n 3) n)
        (else (+ (f-rec-iter (- n 1))
                 (* 2
                    (f-rec-iter (- n 2)))
                 (* 3
                    (f-rec-iter (- n 3)))))))

;; iterative
(define (f-iterative n) (f-iter-iter 2 1 0 n))
(define (f-iter-iter a b c count)
  (if (= count 0)
      c
      (f-iter-iter (+ a
                      (* 2 b)
                      (* 3 c))
                   a
                   b
                   (- count 1))))
