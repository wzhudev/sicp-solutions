(define (recursive-trib n)
  (if (< n 3) 
    n
    (+ (* 3 (recursive-trib (- n 3)))
       (* 2 (recursive-trib (- n 2)))
       (* 1 (recursive-trib (- n 1)))
    )
  )
)

(recursive-trib 0)
(recursive-trib 1)
(recursive-trib 2)
(recursive-trib 3)
(recursive-trib 4)
(recursive-trib 5)

(define (iterative-trib n)
  (define (iter a b c count)
    (cond ((= count 2) a) ; 这里不必等到 count 减少到 0，可以减少 2 步计算
          ((= count 1) b)
          ((= count 0) c)
          (else (iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))
  )

  (iter 2 1 0 n)
)

(iterative-trib 0)
(iterative-trib 1)
(iterative-trib 2)
(iterative-trib 3)
(iterative-trib 4)
(iterative-trib 5)
