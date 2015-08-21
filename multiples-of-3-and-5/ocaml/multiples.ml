let (--) i j =
  let rec aux n acc =
    if n < i then acc else aux (n-1) (n :: acc)
  in aux j [] ;;

let is_multiple target number = target mod number = 0;;

let is_multiple_of_any numbers target =
  List.fold_left (
    fun accumulator number ->
      accumulator || is_multiple target number
  ) false numbers;;

let multiples_of numbers quantity =
  let range = 1--quantity in
    List.fold_left (
      fun accumulator target ->
        if is_multiple_of_any numbers target
        then accumulator @ [target]
        else accumulator
    ) [] range;;

multiples_of [3;5] 9;;
