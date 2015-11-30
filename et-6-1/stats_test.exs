ExUnit.start

defmodule StatsTest do
  use ExUnit.Case

  test "etudes tests" do
    data = [4, 1, 7, -17, 8, 2, 5]
    assert Stats.minimum(data) == -17
    assert Stats.maximum([52, 46]) == 52
    assert Stats.maximum(data) == 8
    assert Stats.range(data) == [-17, 8]
  end
end
