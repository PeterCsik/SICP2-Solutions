(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

;; --- Original vesion (of the functions) ---

;;(define (good-enough? guess x)
;;  (< (abs (- (* guess guess) x)) 0.0001))

;;(define (sqrt-iter guess x)
;;  (if (good-enough? guess x)
;;      guess
;;      (sqrt-iter (improve guess x) x)))

;; --- Alternative version (of the functions) ---

(define (good-enough? guess x)
  (< (abs (- guess (improve guess x))) 0.000001))    ; the modified part

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      (improve guess x)                              ; the modified part
      (sqrt-iter (improve guess x) x)))

(define (sqrt-function x)
  (sqrt-iter 1.0 x))


;; --- Application ---

(sqrt-function 0.004040303030)
(sqrt-function 85675)
(sqrt-function 30404040405405040)

--- Results ---

;; original version:
;; 0.0636002014409321466184089...
;; 292.7029210654378313546418713...
;; ?

;; alternative version
;; 0.0635633780568663109222951...
;; 292.7029210650279793343291061...
;; ?

--- Conclusion ---
;; The calcuclation in the alternative version returns a more precise result compared to the original version.
;; The very large numbers such as 30404040405405040 is still a problem. There is no result of the calculation in both cases even after 3 mins.
