module Multiples where

import List exposing ( foldr )

multipleOf : List Int -> Int -> List Int
multipleOf numbers quantity =
  foldr (getMultiplesOf numbers) [] [1..quantity]

getMultiplesOf : List Int -> (Int -> List Int -> List Int)
getMultiplesOf numbers =
  \target accumulator ->
    if foldr (isMultipleOfAny target) False numbers then
      target :: accumulator
    else
      accumulator

isMultipleOfAny : Int -> (Int -> Bool -> Bool)
isMultipleOfAny target =
  \number accumulator ->
    accumulator || (isMultiple target number)

isMultiple : Int -> Int -> Bool
isMultiple target number = (target `rem` number) == 0
