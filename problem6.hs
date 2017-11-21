-- Problem 6: Find the difference between the sum of the squares of the first
-- one hundred natural numbers and the square of the sum

-- Find the difference between the square of the sum and the sum of squares of numbers up to n
squareDiff n =
    let sumOfSquares = sum [x^2 | x <- [1..n]]
        squareOfSum = (sum [1..n])^2
    in squareOfSum - sumOfSquares

-- Solution can be found by running squareDiff 100
