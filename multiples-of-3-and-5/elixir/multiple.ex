defmodule Multiple do
  import Enum, only: [reduce: 3]

  def multiple_of(numbers, quantity) do
    reduce(quantity..1, [],
      fn (target, accumulator) ->
        if is_multiple(target, numbers), do: [target | accumulator], else: accumulator
      end)
  end

  defp is_multiple(target, [number | numbers]) do
    is_multiple(target, number) || is_multiple(target, numbers)
  end

  defp is_multiple(_target, []), do: false

  defp is_multiple(target, number) do
    rem(target, number) == 0
  end
end
