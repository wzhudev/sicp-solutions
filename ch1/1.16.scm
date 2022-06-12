(define (fast-expt b n)
  (define (even? m) (= (remainder m 2) 0))

  (define (iter x y z) 
    (cond ((= y 0) 1) ; 0 次方为 1
          ((= y 1) (* x z)) ; 1 次方为自己
          ((even? y) (iter (* x x) (/ y 2) z)) ; 如果当前次幂为偶数, 那么把底作平方, 当前次幂减半, 这里是对数阶
          (else (iter x (- y 1) (* z x))) ; 如果当前次幂为奇数, 把底乘到结果中去
    )
  )

  (iter b n 1)
)

(fast-expt 8 0)
(fast-expt 8 100)
