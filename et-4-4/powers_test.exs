ExUnit.start

defmodule PowersTest do
  use ExUnit.Case

  test "Etudes examples" do
    assert Powers.raise(5,1) == 5
    assert Powers.raise(2,3) == 8
    assert_in_delta Powers.raise(1.2,3), 1.728, 0.000001
    assert Powers.raise(2,0) == 1
    assert_in_delta Powers.raise(2,-3), 0.125, 0.000001
  end
end
