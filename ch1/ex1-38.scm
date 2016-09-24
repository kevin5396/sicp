(load "cont-frac.scm")

(define (approx k)
  (+ 2
     (cont-frac (lambda (i) 1.0)
                (lambda (i)
                  (if (= (remainder (+ i 1) 3) 0)
                      (* (/ (+ i 1) 3)
                         2)
                      1))
                k)))
