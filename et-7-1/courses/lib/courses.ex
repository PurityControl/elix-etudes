defmodule Courses do
  def courses_from_csv file_path do
    {_result, device} = File.open(file_path, [:read, :utf8])
    file_text = IO.read(device, :all)
    File.close device
    file_text |> String.split "\n", trim: true 
  end

  def add dict, str do
    HashDict.put dict,
      course_room(str),
      [course_name(str) | HashDict.get(dict, course_room(str), [])]
  end

  def create_course_dict file_path do
    courses = courses_from_csv file_path
    create_course_dict courses, HashDict.new
  end

  defp create_course_dict [], dict do
    dict
  end

  defp create_course_dict [course | rest], dict do
    create_course_dict rest, add(dict, course)
  end

  defp course_to_list str do
    str |> String.strip
        |> String.split ","
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
