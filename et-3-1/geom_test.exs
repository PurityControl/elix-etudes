ExUnit.start

defmodule GeomTest do
  use ExUnit.Case

  test "rectangle gives result" do
    assert Geom.area(:rectangle, 4, 3) == 12
  end
   
  test "rectangle fails without +ve integer args" do
    catch_error Geom.area(:rectangle, -4, 3) == 12
    catch_error Geom.area(:rectangle, 4, 0) == 12
    catch_error Geom.area(:rectangle, 0, -3) == 12
  end
   
  test "triangle gives result" do
    assert Geom.area(:triangle, 4, 3) == 6
  end
   
  test "triangle fails without +ve integer args" do
    catch_error Geom.area(:triangle, -4, 3) == 12
    catch_error Geom.area(:triangle, 4, 0) == 12
    catch_error Geom.area(:triangle, 0, -3) == 12
  end
   
  test "ellipse gives result" do
    assert_in_delta Geom.area(:ellipse, 4, 3), :math.pi * 12, 0.00001
  end
  
  test "ellipse fails without +ve integer args" do
    catch_error Geom.area(:ellipse, -4, 3) == 12
    catch_error Geom.area(:ellipse, 4, 0) == 12
    catch_error Geom.area(:ellipse, 0, -3) == 12
  end
end
