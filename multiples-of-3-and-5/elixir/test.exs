ExUnit.start

defmodule MultipleTest do
  use ExUnit.Case, async: true
  import Multiple, only: [multiple_of: 2]

  test "10 multiples of 3 and 5" do
    assert multiple_of([3, 5], 9) == [3,5,6,9]
  end
end
