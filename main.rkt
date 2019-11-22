#lang racket

;; remove: Symbol -> List -> List
;; usage: (remove symbol list) = remove all occurences of symbol
(define remove
  (lambda (s los)
    (if (null? los)
        '()
        (if (eqv? (car los) s)
            (remove s (cdr los))
            (cons (car los) (remove s (cdr los)))))))



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