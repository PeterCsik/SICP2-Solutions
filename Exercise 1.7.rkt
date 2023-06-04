(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

;(define (good-enough? guess x)
;  (< (abs (- (* guess guess) x)) 0.0001))

;(define (sqrt-iter guess x)
;  (if (good-enough? guess x)
;      guess
;      (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- guess (improve guess x))) 0.000001))    ; modified

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      (improve guess x)                             ; modified
      (sqrt-iter (improve guess x) x)))


(sqrt-iter 0.0202 0.004040303030)
(sqrt-iter 5858 856752211269)
(sqrt-iter 30420 30404040405405040)
