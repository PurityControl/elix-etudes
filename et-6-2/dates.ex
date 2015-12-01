defmodule Dates do
  def date_parts str do
    # map would work best here but sticking to the spirit and constraints
    # of the etudes
    [year, month, day] = String.split str, "-"
    [to_int(year), to_int(month), to_int(day)]
  end

  def julian date do
    [year, month, day] = date_parts date
    months = months_for_year year
    month_days(month, months) + day
  end

  defp to_int str do
    {integer, _fraction} = Integer.parse(str)
    integer
  end

  defp month_days 1, months do
    0
  end

  defp month_days month, [month_head | month_tail] do
    month_head + month_days(month - 1, month_tail)
  end

  defp months_for_year year do
    if leap_year? year do
      [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    else
      [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    end
  end

  defp leap_year? year do
    (rem(year, 4) == 0 and rem(year, 100) != 0) or (rem(year, 400) == 0)
  end
end
