defmodule Dates do
  def date_parts str do
    # map would work best here but sticking to the spirit and constraints
    # of the etudes
    [year, month, day] = String.split str, "-"
    [to_int(year), to_int(month), to_int(day)]
  end

  defp to_int str do
    {integer, _fraction} = Integer.parse(str)
    integer
  end
end
