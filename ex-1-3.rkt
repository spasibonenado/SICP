#lang scheme

;; SICP-ex-1.3 - Определите процедуру которая принимает в качетсве аргументов
;; три числа и возвращает сумму квадратов больших из них

(define (square x) (* x x))
(define (sobs x y z)
  (cond ((and (>= x y) (>= y z)) (+ (square x) (square y)))
        ((and (>= y x) (>= x z)) (+ (square x) (square z)))
        ((and (>= z x) (>= y x)) (+ (square z) (square y)))))
                           
(sobs 1 3 2)