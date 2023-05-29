(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (sqr guess) x)) 0.001))
  
 ;; --- Using If special form ---

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))
      
;; "If" is a special form and it is evaluated as follows:
;; if the predicate "(good-enough? guess x)" is evaluated to #true
;; then it returns the consequent ("guess") as a result. 
;; If the predicate is evaluated to #false, then the alternative "(sqrt-iter (improve guess x) x"
;; is evaluated and then returns a result based on that evaluation.

;; --- Using a Function ---

;; If we replace 

;;  (if (good-enough? guess x)
;;      guess
;;      (sqrt-iter (improve guess x) x)))

;; in

;; (define (sqrt-iter guess x)
;;   (if (good-enough? guess x)
;;       guess
;;      (sqrt-iter (improve guess x) x)))

;; with a function

;; (define (new-if predicate then-clause else-clause)
;;  (cond (predicate then-clause)
;;        (else else-clause)))

;; and then apply it

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))
          
;; the evaulation will be different compared to "if" special form.
;; It will evaluate all conditions first, including "good-enough? guess x" and 
;; "sqrt-iter (improve guess x) x" and only then will return a result.

  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))
          
;; Since "sqrt-iter (improve guess x) x)))" is calling itself
;; it will create a loop that cannot be terminated. In other words, it will keep evaluating 
;; the whole "(sqrt-iter guess x)" function again and again and never returns a finite/final resut.
