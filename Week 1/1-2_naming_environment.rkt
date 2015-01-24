#lang racket
(define size 2)
size
(* 2 size)

;More Examples

(define pi 3.14159)
(define radius 10)
(* pi (* radius radius))
(define circumference (* 2 pi radius)) ;Defining compound operations
circumference