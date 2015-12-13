defmodule CoursesTest do
  use ExUnit.Case
  doctest Courses

  test "one string creates single item hash" do
    assert HashDict.equal?(
      Courses.add(HashDict.new, "64850,ENGL 033,RF141"), one_elem_hash)
  end

  test "adds if a key if not already present" do
  end

  test "appends if key is present" do
  end


  defp one_elem_hash do
    dict = HashDict.put HashDict.new, "RF141", "ENGL 033"
  end
end
