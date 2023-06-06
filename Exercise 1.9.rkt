;; Scheme

(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))
  
  
 ;; Racket
 
 (define (my-add1 a b)
  (if (= a 0)
      b
      (add1 (my-add1 (sub1 a) b))))

(my-add1 4 5)
(add1 (my-add1 3 5))
(add1 (add1 (my-add1 (sub1 3) 5)))
(add1 (add1 (add1 (my-add1 (sub1 2) 5))))
(add1 (add1 (add1 (add1 (my-add1 (sub1 1) 5)))))
(add1 (add1 (add1 (add1 (my-add1 0 5)))))
(add1 (add1 (add1 (add1 5))))
(add1 (add1 (add1 6)))
(add1 (add1 7))
(add1 8)
9

(define (my-add2 a b)
  (if (= a 0)
      b
      (my-add2 (sub1 a) (add1 b))))
