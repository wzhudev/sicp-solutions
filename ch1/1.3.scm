(define 
  (sum-max-two-of-three x y z) 
  (cond ((and (>= x z) (>= y z)) (+ x y))
        ((and (>= x y) (>= z y)) (+ x z))
        ((and (>= y x) (>= z x)) (+ y z))
  )
)

(sum-max-two-of-three 1 2 3)
(sum-max-two-of-three 7 2 3)
