(define (split-at lst n)
;TODO
    (cond 
        ((null? lst) (cons nil nil))
        ((= n 0) (cons nil lst))
        ((> n (length lst)) (cons lst nil))
        (else (cons 
                (cons (car lst) (car (split-at (cdr lst) (- n 1))))
                (cdr (split-at (cdr lst) (- n 1)))
              )
        )
    )
)

(define (compose-all funcs) 
;TODO
    (lambda (x) 
        (if (null? funcs) x 
            ((compose-all (cdr funcs)) 
            ((car funcs) x))
        )
    )
)
