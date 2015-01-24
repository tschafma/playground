#lang racket
;Defining procedures
;(define (<name> <formal parameters>) <body>)

;To square something. Times 'x' by itself
(define (square x) (* x x))
(square 21)
(square (+ 2 5))
(square (square 3))

;Procedure as building block of another procedure
(define (sum-of-squares x y)
  (+ (square x) (square y)))
(sum-of-squares 3 4)

;Further building block in procedure
(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))
(f 5)