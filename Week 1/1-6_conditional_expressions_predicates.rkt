#lang racket
;(cond (<p1> <e1>) p=predicate, e=consequent expression
;      (<p2> <e2>)
;      .
;      .
;      (<pn> <en>)
;If predicate returns true, returns value of corresponding consequent expression

(define (abs1 x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(define (abs2 x)
  (cond ((< x 0) (- x))
        (else x)))

;If conditional - (if <predicate> <consequent> <alternative>)
(define (abs3 x)
  (if (< x 0)
      (- x)
      x))

;Multiple conditions
;(and <e1> ... <en>)
;(or <e1> ... <en>)
;(not <e>)

(define (>= x y)
  (or (> x y) (= x y)))
;or . . .
(define (>= x y)
  (not (< x y)))