(declare (extended-bindings) (not constant-fold) (not safe))

(define c1 #\A)
(define c2 #\B)

(define (test2 x y)
  (println (or x y))
  (println (if (or x y) 11 22))
  (println (or (##not x) y))
  (println (if (or (##not x) y) 11 22))
  (println (or x (##not y)))
  (println (if (or x (##not y)) 11 22))
  (println (or (##not x) (##not y)))
  (println (if (or (##not x) (##not y)) 11 22))
  (println (##not (or x y)))
  (println (if (##not (or x y)) 11 22))
  (println (##not (or (##not x) y)))
  (println (if (##not (or (##not x) y)) 11 22))
  (println (##not (or x (##not y))))
  (println (if (##not (or x (##not y))) 11 22))
  (println (##not (or (##not x) (##not y))))
  (println (if (##not (or (##not x) (##not y))) 11 22)))

(define (test x)
  (test2 x c1)
  (test2 x c2))

(test c1)
(test c2)