(ns multiples.test
  (:use clojure.test multiples))

(deftest test-multiples-of
  (is (= (multiples-of [3 5] 10) [3 5 6 9 10])))
