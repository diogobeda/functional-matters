multiples_of :: [Int] -> Int -> [Int]
multiples_of numbers quantity =
  foldr (
    \target accumulator ->
      if is_multiple_of_any target numbers
        then target : accumulator
        else accumulator
  ) [] [1..quantity]

is_multiple_of_any :: Int -> [Int] -> Bool
is_multiple_of_any target numbers =
  foldr (
    \number accumulator ->
      accumulator || is_multiple target number
  ) False numbers

is_multiple :: Int -> Int -> Bool
is_multiple target number =
  target `rem` number == 0

main = print (multiples_of [3,5] 9)
