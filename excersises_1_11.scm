(define (fr n)
  (if (< n 3)
      n
      (+ (fr (- n 1)) (fr (- n 2)) (fr (- n 3)))))

(fr 4)

;; (+ (fr 3) (fr 2) (fr 1))
;; (+ 

(define (sum-of n)
  (define (iter c acc)
    (if (= c 0)
        acc
        (iter (- c 1) (+ acc c))))
  (iter n 0))

(sum-of 5)

;; ok, idea should be similar to fibonacci calc
;;
;; a <- a + b + c 
;; b <- a
;; c <- b

;; 3, 6, 11, 20, 37, ...

;; a  b  c
;; -------
;; 2  1  0
;; 3  2  1     +: 3  -> 6
;; 6  3  2     +: 6  -> 11
;; 11 6  3     +: 11 -> 20
;; 20 11 6     +: 20 -> 37
;; .......

(define (fi n)
  (define (iter a b c count)
    (if (< count 3)
        a
        (iter (+ a b c) a b (- count 1))))
  (iter 2 1 0 n))

(fi 5)
