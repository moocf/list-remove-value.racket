#lang racket

;; list.remove-value: Symbol -> List -> List
;; usage: (list.remove-value symbol list) = list.remove-value all occurences of symbol
(define list.remove-value
  (lambda (s los)
    (if (null? los)
        '()
        (if (eqv? (car los) s)
            (list.remove-value s (cdr los))
            (cons (car los) (list.remove-value s (cdr los)))))))



; reference
; ---------

; (define id expr):
; define global identifier

; (lambda (args...) body)
; define a function

; (eqv? a b)
; check if a is equal to b
; (types need not be same)

; (null? list)
; is list is empty

; (car list)
; returns first element of list (head)

; (cdr list)
; get elements of list excluding the first (tail)

; (cons value list)
; get a new list with value appended to the front of the list
