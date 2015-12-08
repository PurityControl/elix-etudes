defmodule NonFPTest do
  use ExUnit.Case
  doctest NonFP

  test "correct list of teeth" do
    teeth_list = NonFP.generate_pockets [?T, ?F, ?T, ?F], 0.5
    [a, b, c, d] = teeth_list
    assert length(a) == 6
    assert length(b) == 1
    assert length(c) == 6
    assert length(d) == 1
  end
end
