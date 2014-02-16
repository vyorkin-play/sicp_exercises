(define (abs x)
  (cond ((< x 0) (- x))
        ((> x 0) x)
        ((= x 0) 0)))

(define (abs1 x)
  (cond ((< x 0) (- x))
        (else x)))

(define (abs2 x)
  (if (< x 0)
      (- x)
      x))

(define (>= x y)
  (or (> x y) (= x y)))

(define a 3)
(define b (+ a 1))

(+ a b (* a b))
(= a b)

(if (and (> b a) (< b (* a b)))
    b
    a)

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(/ (+ 5 4
      (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3
      (- 6 2)
      (- 2 7)))

(define (max x y)
  (if (> x y) x y))

(define (sqr x)
  (* x x))

(define (sum-squares a b c)
  (+ (sqr (max a b)) (sqr (max b c))))

(sum-squares 1 2 3)

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 1 -2)

;; endless recursion
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;; don't try this at home
;; if you r using applicative eval order
;; (test 0 (p))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (sqr guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt (+ 100 37))
(sqrt (+ (sqrt 2) (sqrt 3)))
(sqr (sqrt 1000))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 5 0) 2 3)
(new-if (= 1 1) 4 5)

(define (sqrt-iter1 guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter1 (improve guess x) x )))

(define (sqrt1 x)
  (sqrt-iter1 1.0 x))

(sqrt 0.00001)

;; endless recursion cause of applicative eval order
;; if is a special form, that doesn't use appl. eval order
;; (sqrt1 9)

(define (good-enough1? prev-guess curr-guess)
  (< (abs (- prev-guess curr-guess)) 0.00000000001))

(define (sqrt-iter2 prev-guess curr-guess x)
  (if (good-enough1? prev-guess curr-guess)
      curr-guess
      (sqrt-iter2 curr-guess (improve curr-guess x) x)))

(define (sqrt2 x)
  (sqrt-iter2 0.9 1.0 x))

(sqrt2 1.2)
(sqrt2 9)
(sqrt2 9000)
(sqrt2 100500100500100500)
(sqrt2 0.00000001)
