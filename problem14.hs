-- Problem 14: Find the longest Collatz chain with starting number under one million
import Data.List
import Data.Ord

-- Computes Collatz sequence given a starting natural number
collatz :: (Integral a) => a -> [a]
collatz 1 = 1:[]
collatz n
  | even n = n:collatz (n `div` 2)
  | odd n = n:collatz (3*n + 1)

-- Gets longest Collatz chain with starting value strictly smaller than n
longestCollatz :: (Integral a) => a -> [a]
longestCollatz n = snd . maximumBy (comparing fst) $ collatzPairs n
    where collatzPairs n = [(length x, x) | x <- map collatz [1..n-1]]

main :: IO ()
main = do print . head . longestCollatz $ 1000000
