(define (square n) (* n n))

(define (pow base exp) 
(cond 
  ((= exp 2) (square base))
  ((= exp 1) base)
  ((even? exp) (square(pow base (/ exp 2))))
  ((odd? exp) (* base (square(pow base (/ (- exp 1) 2)))))
  )
)

(define (repeatedly-cube n x)
    (if (zero? n)
        x
        (let
            (( y (pow x (pow 3 (- n 1)))) )
            (* y y y))))

(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cdr (cdr s))))