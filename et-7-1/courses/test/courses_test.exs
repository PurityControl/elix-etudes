defmodule CoursesTest do
  use ExUnit.Case
  doctest Courses

  test "one string creates single item hash" do
    assert HashDict.equal?(
      Courses.add(HashDict.new, "64850,ENGL 033,RF141"), one_elem_hash)
  end

  test "adds if a key if not already present" do
    assert HashDict.equal?(
      Courses.add(one_elem_hash, "64850,ENGL 032,RF142"),
                  HashDict.put(one_elem_hash, "RF142", ["ENGL 032"]))
  end

  test "appends if key is present" do
    assert HashDict.equal?(
      Courses.add(one_elem_hash, "64851,ENGL 032,RF141"),
                  HashDict.put(HashDict.new, "RF141",
                    ["ENGL 032", "ENGL 033"]))
  end


  defp one_elem_hash do
    HashDict.put HashDict.new, "RF141", ["ENGL 033"]
  end
end
