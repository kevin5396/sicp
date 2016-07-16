;; recursive

(define (pascal row col)
  (if (or (= row 0)
          (= row 1)
          (= col 0)
          (= row col))
      1
      (+ (pascal (- row 1)
                 (- col 1))
         (pascal (- row 1)
                 col))))


;; iterative, a little mathematics

(define (pascal-iter row col)
  (if (or (= row 0)
          (= col 0)
          (= row 1)
          (= row col))
      1
      (pascal-iter-iter row 1 row col)))

;; this looks a little bit weird because I just don't wanna calculate the factorials

(define (pascal-iter-iter row deno num count)
  (if (= count 1) ;; do the division when count hits 1
      (/ num deno)
      (pascal-iter-iter (- row 1)
                        (* deno count)
                        (* num
                           (- row 1))
                        (- count 1))))
