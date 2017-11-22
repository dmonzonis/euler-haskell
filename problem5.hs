-- Problem 5: Find smallest natural divisible by all numbers from 1 to 20

solution = foldl1 lcm [1..20]

-- Solution is basically the least common multiple of all numbers in the range
