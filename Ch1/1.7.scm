;;; ex 1.7
(define (average x y)
    (/ (+ x y) 2))

(define (improve guess x)
    (average guess (/ x guess)))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

; new method. work fine for both small number and large number
(define (new-good-enough? guess x)
    (< (/ (abs (- (improve guess x) guess)) guess) 0.001))

(define (sqrt-iter guess x)
    (if (new-good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
                   x)))

(define (sqrt x)
    (sqrt-iter 1.0 x))

; examples:
 (sqrt 0.000000001)
 (sqrt 1111111111111222222)
