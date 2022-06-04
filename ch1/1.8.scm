(define (cube-root x) 
  ; 将一些子方法放在 block 内
  (define (cube-root-iter guess x)
    (if 
      (good-enough? guess x)
      guess
      (cube-root-iter (improve-guess guess x) x);
    )
  )

  (define (improve-guess guess x) 
    (
      / 
      (+ (/ x (square guess)) (* 2 guess)) 
      3
    )

  )

  (define (good-enough? guess x) 
    (< (abs (- (cube guess) x)) 0.0001)
  )

  (define (cude x) (* x x x))

  (define (square x) (* x x))

  (cube-root-iter 1.0 x) ; 这里必须传递一个浮点数
)

(cube-root 8) ; 2.000004911675504 可以看到由于计算精度的问题，即使是对一个整数的立方数求立方根，也是不完全准确的
