(define (p) (p))

(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))


;; -- applicative-order evaluation --
;;("All arguments to a function are evaluated before the function is applied.")

;; The (test 0 (p)) would not give any result because the evaluation would be never terminated. Reason:

;; The function (define (p) (p)) is an example of a self-referential function, 
;; also known as a recursive function or an infinite loop.

;; When this function is defined and called, it creates an infinite loop of function calls. 
;; The function p is defined to call itself recursively without any base case or termination condition. 
;; As a result, when you invoke the function (p), it will continue calling itself indefinitely, 
;; leading to an infinite recursion.


;; -- normal-order evaluation --
;;("An argument to a function is not evaluated until it is actually needed during the computation.")

;;  The (test 0 (p)) would give 0 as results. Reason:

;; (test 0 (p))
;; (if (= 0 0) 0 y))
;; (if #true 0 y)
;; 0

;; In the "if (= x 0) 0 y)" statement, "x" is the first paramater so it will be evaluated as first. 
;; "x" is replaced with the argument "0" and evaluated. 
;; It returns #true which means according to the if statement that the result of the function is 0. 
;; Therefore there is no need to evaluate any other parameters, i. e. to replace the second parameter "y" with "(p)" argument
;; to find out a result. The result is arleady known.
