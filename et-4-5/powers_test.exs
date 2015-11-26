ExUnit.start

defmodule PowersTest do
  use ExUnit.Case

  test "Etudes examples" do
    assert_in_delta Powers.nth_root(27, 3), 3, 0.000001
  end
end
