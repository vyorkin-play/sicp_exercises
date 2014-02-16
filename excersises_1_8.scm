(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (average x y)
    (/ (+ x y) 2))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))

(sqrt 9)

(define (factorial n)
  (if (= n 1)
      n
      (* n (factorial (- n 1)))))

(define (factorial1 n)
  (define (iter counter product)
    (if (> counter n)
        product
        (iter (+ counter 1)
              (* counter product))))
  (iter 1 1))

(factorial 4)
(factorial1 4)

