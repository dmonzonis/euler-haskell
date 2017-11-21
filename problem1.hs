-- Problem 1: Find the sum of all multiples of 3 and 5 below 1000

-- Given if a number is a multiple of any of the numbers on a list
isMultOfAny :: (Integral a) => [a] -> a -> Bool
isMultOfAny [] _ = False
isMultOfAny (x:xs) n = n `mod` x == 0 || isMultOfAny xs n

-- Sums the multiples of any number in mults up to n
sumOfMults :: (Integral a) => a  -> [a] -> a
sumOfMults n mults = sum [x | x <- [1..n-1], isMultOfAny mults x]

-- Solution is found by running sumOfMults 1000 [3, 5]
