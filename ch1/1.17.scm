(define (fast-multiply a b)
  ; 感觉这里有点问题: 如果这个语言不能做乘法运算, 那 remainder 里做的除法运算
  ; 应该也不能做
  (define (even? n) (= (remainder n 2) 0))

  (define (double n) (* n 2))
  (define (halve n) (/ n 2))

  (define (iter x y z)
    (cond ((= x 0) (+ y z)) 
          ((even? x) (iter (halve x) (double y) z))
          (else (iter (- x 1) y (+ z x)))
    )
  ) 

  (iter a b 0)
)

(fast-multiply 5 6)
