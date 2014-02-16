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

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))
