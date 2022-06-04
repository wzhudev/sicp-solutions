(define (square-root x) 
  ; 将一些子方法放在 block 内
  (define 
    (square-root-iter guess x)
    (if 
      (good-enough? guess (improve-guess guess x))
      guess
      (square-root-iter (improve-guess guess x) x);
    )
  )

  (define (average x y)
    (/ (+ x y) 2)
  )

  (define (improve-guess guess x) 
    (average guess (/ x guess))
  )

  (define (good-enough? previous-guess guess)
    (< (abs (/ (- guess previous-guess) guess)) 0.00000000001)
  )

  (define (square x) (* x x))

  (square-root-iter 1.0 x) ; 这里必须传递一个浮点数
)

(square-root 2000000000000000000000000)
