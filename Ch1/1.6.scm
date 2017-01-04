;;; ex 1.6

; will exceed maximum recursion depth. new-if is not a special form.
; According to applicative order, when dealing with new-if, interpreter will always evaluate else-clause,
; which results in an infinite loop.

(define (average x y)
    (/ (+ x y) 2))

(define (improve guess x)
    (average guess (/ x guess)))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

;(define (sqrt-iter guess x)
;    (if (good-enough? guess x)
;        guess
;        (sqrt-iter (improve guess x)
;                   x)))

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(sqrt 9)
