(ns multiple)

(defn is-multiple [target number]
  (= (mod target number) 0))

(defn is-multiple-of-any [target numbers]
  (reduce (fn [accumulator, number] (or accumulator (is-multiple target number)))
    false numbers))

(defn filter-multiples-of [numbers]
  (fn [accumulator target]
    (if (is-multiple-of-any target numbers)
      (conj accumulator target)
      accumulator)))

(defn multiple-of [numbers quantity]
  (reduce (filter-multiples-of numbers) [] (range 1 (+ quantity 1))))
