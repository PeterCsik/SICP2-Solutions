(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

--- Original vesion (of the functions) ---

;;(define (good-enough? guess x)
;;  (< (abs (- (* guess guess) x)) 0.0001))

;;(define (sqrt-iter guess x)
;;  (if (good-enough? guess x)
;;      guess
;;      (sqrt-iter (improve guess x) x)))

--- Alternative version (of the functions) ---

(define (good-enough? guess x)
  (< (abs (- guess (improve guess x))) 0.000001))    ; the modified part

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      (improve guess x)                              ; the modified part
      (sqrt-iter (improve guess x) x)))

--- Application ---

(sqrt-iter 0.0202 0.004040303030)
(sqrt-iter 5858 856752211269)
(sqrt-iter 30420 30404040405405040)

--- Results ---

;; original version:
;; 0.0642226044757862578518422...
;; 925609.1028447159777857063666085...
;; ?

;; alternative version
;; 0.0635633780568654171028621...
;; 925609.1028447159777856500145315...
;; ?

--- Conclusion ---
;; The calcuclation in the alternative version returns a more precise result compared to the original version.
;; The very large number such as 30404040405405040 are still a problem. There is no result of the calculation in both cases even after 3 mins.
