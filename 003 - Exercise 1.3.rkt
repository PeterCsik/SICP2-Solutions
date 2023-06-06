(define (p a b c)
                 (cond
                   [(and (>= a b) (>= b c)) (+ (* a a)(* b b))]
                   [(and (>= a b) (<= b c)) (+ (* a a)(* c c))]
                   [(and (<= a b) (<= b c)) (+ (* b b)(* c c))]
                   [(and (and (<= a b) (>= b c))(>= a c))(+(* b b)(* a a))]
                   [(and (and (<= a b) (>= b c))(<= a c))(+(* b b)(* c c))]
                   ))
                   
;; an alternative solution:

(define (p a b c)
                 (cond
                   [(and (<= a b) (<= a c)) (+ (* b b)(* c c))]
                   [(and (<= b a) (<= b c)) (+ (* a a)(* c c))]
                   [else (+ (* a a)(* b b))]
                   ))
