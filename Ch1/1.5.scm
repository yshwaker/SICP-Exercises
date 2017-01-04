;;; ex 1.5

(define (p) (p))

(define (test x y)
    (if (= x 0)
        0
        y))

(test 0 (p))

; applicative order: dead loop
; normal order: 0
; since in normal order, the value of (p) is never needed, so it will not be evaluated.
; however in applicative order, (p) will be evaluated at the first time which ends up being a dead loop.
