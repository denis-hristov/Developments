1.1 (let ((x 4)(y 2))
(+ (expt x 2) (* 3 y))
)

((lambda (x y)
(+ (expt x 2) (* 3 y)))
4 2)

1.2 (let ((x 2)(y 3))
(+ (* 2 (expt x 3)) (* 5 (expt y 2))))

((lambda (x y)
(+ (* 2 (expt x 3)) (* 5 (expt y 2)))
) 
2 3
)

1.3 (let ((x 6)(y 10))
(/ (+ x y) 2))

((lambda (x y)
(/ (+ x y) 2)
) 
6 10)

1.4 (let ((x 3)(y 4))
(sqrt (+ (expt x 2) (expt y 2)))
)

((lambda (x y)
(sqrt (+ (expt x 2) (expt y 2)))
)
3 4)

1.5 (let ((x (/ 1 2)) (y (expt 2 3)))
(+ (* x (expt y 3)) (- (* 4 (expt x 2)) (* 2 y)))
)

((lambda (x y)
(+ (* x (expt y 3)) (- (* 4 (expt x 2)) (* 2 y)))
)
(/ 1 2) (expt 2 3)
) 


2.1 ((lambda (x y)
(+ x y)
)
4 7
)

2.2 ((lambda (a b)
(- (expt a 2) b)
)
3 5
)

2.3 ((lambda (x y)
(+ (* x y) y)
)
(+ 1 2) (* 2 4)
)

2.4 ((lambda (a b)
(sqrt (+ (expt a 2) (expt b 2))) 
)
6 8
)

2.5 ((lambda (x y)
(+ (* 4 x) (expt y 2))
)
(/ 1 2) (expt 3 2)
)


3.1 (let ((x 3)(y 7))
(* x y)
)

3.2 (let ((a 4)(b 5))
(+ (expt a 2) (expt b 2))
)

3.3 (let ((x 8)(y 12))
(/ (+ x y) 2)
)

3.4 (let ((a (+ 2 3))(b (expt 2 2)))
(- (* 3 a) (* 2 b))
)

3.5 (let ((x 6)(y 8))
(sqrt (+ (expt x 2) (expt y 2)))
)


4.1 (define (zad41 x)
(if (and (> x 2) (< x 8))
"Yes"
"No")
)

4.2 (define (zad42 x)
(if (and (>= x 5) (<= x 15))
"Yes"
"No")
)

4.3 (define (zad43 x)
(if (and (>= x -3) (< x 7))
"Yes"
"No")
)

4.4 (define (zad44 x)
(if (and (> x 0) (<= x 20))
"Yes"
"No")
)

4.5 (define (zad45 x)
(if (or (and (> x 1) (< x 5)) (and (> x 10) (< x 15)))
"Yes"
"No")
)


5.1 (define (zad51 a b)
(if (> a b)
1
(* a (zad51 (+ a 2) b))
))

5.2 (define (zad52 a b)
(if (> a b)
1
(* a (zad52 (+ a 2) b))
))

5.3 (define (zad53 a b)
(if (> a b)
1
(* a (zad53 (+ a 3) b))
))

5.4 (define (zad54 a b)
(if (> a b)
1
(* a (zad54 (+ a 3) b))
))

5.5 (define (zad55 a b d)
(if (and (> a b) (> d 0)
1
(* a (zad55 (+ a d) b d))
))



6.1 (define ls1 '(1 3 1 0 1))
(define (zad61 ls1)
(cond
((null? ls1) 0)
((= (car ls1) 1) (+ 1 (zad61 (cdr ls1))))
(else (zad61 (cdr ls1)))
))

6.2 (define ls2 '(-2 0 5 -7))
(define (zad62 ls2)
(cond
((null? ls2) 0)
((< (car ls2) 0) (+ 1 (zad62 (cdr ls2))))
(else (zad62 (cdr ls2)))
))

6.3 (define ls3 '(1 2 4 7 0))
(define (zad63 ls3)
(cond
((null? ls3) 0)
((even? (car ls3)) (+ 1 (zad63 (cdr ls3))))
(else (zad63 (cdr ls3)))
))

6.4 (define ls4 '(3 11 10 15 20))
(define (zad64 ls4)
(cond
((null? ls4) 0)
((> (car ls4) 10) (+ 1 (zad64 (cdr ls4))))
(else (zad64 (cdr ls4)))
))

6.5 (define ls5 '(5 2 5 5))
(define (zad65 ls5 k)
(cond
((null? ls5) 0)
((= (car ls5) k) (+ 1 (zad65 (cdr ls5) k)))
(else (zad65 (cdr ls5) k))
))


7.1 (define (zad71 XS)
(cond
((null? XS) '())
((even? (car XS)) (cons (expt (car XS) 2) (zad71 (cdr XS))))
(else (zad71 (cdr XS)))
))

7.2 (define (zad72 ls6)
(cond
((null? ls6) '())
((even? (car ls6)) (zad72 (cdr ls6)))
(else (cons (expt (car ls6) 3) (zad72 (cdr ls6))))
))

7.3 (define (zad73 ls6)
(cond
((null? ls6) '())
((> (car ls6) 0) (cons (* (car ls6) 2) (zad73 (cdr ls6))))
(else (zad73 (cdr ls6)))
))

7.4 (define (zad74 ls6)
(cond
((null? ls6) '())
((< (car ls6) 0) (cons (expt (car ls6) 2) (zad74 (cdr ls6))))
(else (zad74 (cdr ls6)))
))

7.5 (define (zad75 ls6)
(cond
((null? ls6) '())
((= (remainder (car ls6) 3) 0) (cons (+ (car ls6) 10) (zad75 (cdr ls6))))
(else (zad75 (cdr ls6)))
))