(define (square x) (* x x))

; A simple implementation
(define (sum-sqr-big-0 a b c) 
	(cond ((> a b) 
			  (cond ((> b c) (+ (square a) (square b)))
			  		(else    (+ (square a) (square c)))))
		  (else
		  	  (cond ((> c a) (+ (square b) (square c)))
		  	  	    (else    (+ (square b) (square a)))))))

; a nicer way
(define (sum-of-square x y) 
	(+ (square x) (square y)))

(define (bigger x y)
	(if (> x y)
		x
		y))

(define (smaller x y)
	(if (< x y)
		x
		y))

(define (sum-sqr-big-1 a b c)
	(sum-of-square (bigger a b)
				   (bigger (smaller a b) c)))
