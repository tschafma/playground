#lang racket
;1.1
10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))
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

(+ 2 (if (> b a) b a))

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))

;1.2

;1.3
;Find max
(define (max x y)
  (if (> x y) 
  x
  y))
 
;find square
(define (square x) (* x x))  

;find sum of squares
(define (sum-of-squares x y)
  (+ (square x) (square y)))

;find sum of square of the 2 larger numbers of 3
(define (ex x y z)
  (sum-of-squares (max x y) (max x z)))
(ex 1 2 3)

;1.4
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 1 2)
(a-plus-abs-b 1 (- 2))

;1.5
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;(test 0 (p)) goes infinitely