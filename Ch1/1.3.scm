;;; ex 1.3
(define (min a b)
    (if (< a b)
        a
        b))
(define (sum-of-max-two a b c)
    (- (+ a b c)
       (min a
            (min b c))))
;(sum-of-max-two 1 5 7)
;Value: 12
