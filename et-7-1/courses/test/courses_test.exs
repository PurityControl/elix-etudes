defmodule CoursesTest do
  use ExUnit.Case
  doctest Courses

  test "one string creates single item hash" do
    dict = HashDict.new
    dict = HashDict.put dict, "RF141", "ENGL 033"
    assert HashDict.equal?(
      Courses.add(HashDict.new, "64850,ENGL 033,RF141"), dict)
  end
end
