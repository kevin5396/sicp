(define (double n) (+ n n))
(define (halve n) (/ n 2))

(define (even? n) (= (remainder n 2) 0))
;; recursive
(define (x-recursive a b)
  (if (< b 0)
      (- (x-recursive-iter a
                           (abs b)))
      (x-recursive-iter a b)))
(define (x-recursive-iter a b)
  (cond ((= b 1) a)
        ((even? b) (double (x-recursive-iter a (halve b))))
        (else (+ a (x-recursive-iter a (- b 1))))))

;; iterative
(define (x-iterative a b)
  (if (< b 0)
      (- (x-iter 0 a (abs b)))
      (x-iter 0 a b)))
(define (x-iter n a b)
  (cond ((= b 0) n)
        ((even? b) (x-iter n
                           (double a)
                           (halve b)))
        (else (x-iter (+ n a)
                      a
                      (- b 1)))))
