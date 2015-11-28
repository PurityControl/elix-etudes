ExUnit.start

defmodule GeomTest do
  use ExUnit.Case

  test "integer regexp test" do
    assert AskArea.integer? "3"
    assert AskArea.integer? "-3"
    refute AskArea.integer? "3.2"
    refute AskArea.integer? "3.2"
  end

  test "float regexp test" do
    assert AskArea.float? "3.3"
    assert AskArea.float? "-3.3"
    assert AskArea.float? "-3.2e+8"
    assert AskArea.float? "-3.2e-8"
    assert AskArea.float? "-3.2e+8.2"
    assert AskArea.float? "-3.2e-8.2"
    assert AskArea.float? "-3.2E+8"
    assert AskArea.float? "-3.2E-8"
    assert AskArea.float? "-3.2E+8.2"
    assert AskArea.float? "-3.2E-8.2"
    refute AskArea.float? "bcd"
  end
end
