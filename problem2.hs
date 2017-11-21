-- Problem 2: Find sum of even-valued Fibonacci numbers that do not exceed 4 million

sumOfEvenFibs :: (Integral a) => a -> a
sumOfEvenFibs n = sum . takeWhile (< n) . filter even $ fibSeq
    where fibSeq = fibs 0 1
          fibs n m = n:fibs m (n + m)

-- Solution is found by running sumOfEvenFibs 4000000
