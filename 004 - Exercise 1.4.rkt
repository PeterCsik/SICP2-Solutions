(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
  
;; if "b" is a positie number, then the result is  "a + b"
;; if "b" is a negative number, then the result is "a - b"
  
;; examples:
(a-plus-abs-b 1 10)        ;; evaluates to 11
(a-plus-abs-b 10 -2)       ;; evaluates to 12
