defmodule Courses do
  def add dict, str do
    HashDict.put dict,
      course_room(str),
      [course_name(str) | HashDict.get(dict, course_room(str), [])]
  end

  defp course_to_list str do
    str |> String.strip
        |> String.split ","
  end

  defp course_id str do
    [id, _name, _room] = course_to_list str
    id
  end

  defp course_name str do
    [_id, name, _room] = course_to_list str
    name
  end

  defp course_room str do
    [_id, _name, room] = course_to_list str
    room
  end
end
