(load "repeat.scm")
(define (expt base n)
  (if (= n 0)
      1
      ((repeat (lambda (x) (* x base)) n) 1))) ; x^n = x * x * x * ... * 1
