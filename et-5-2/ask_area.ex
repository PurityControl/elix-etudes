defmodule AskArea do
  @moduledoc """
    Etudes 5-2 requires regex patterns to calculate whether input
    is a float, integer or invalid.
  """

  def area do
    shape = get_shape
    unless shape == :unknown do
      width = get_width shape
      height = get_height shape
      Geom.area {shape, width, height}
    else
      Geom.area {shape, 0, 0}
    end
  end

  defp get_shape do
    IO.puts """
      Which area do you want to calculate?
      R)ectangle
      T)riangle, or
      E)llipse
    """

    answer = IO.gets("Which? > ")
    value = String.first(answer)
    char_to_area(value)
  end

  defp get_width shape do
    prompt = case shape do
      :rectangle -> "Enter width > "
      :triangle -> "Enter base > "
      :ellipse -> "Enter major radius > "
    end
    get_number prompt
  end

  defp get_height shape do
    prompt = case shape do
      :rectangle -> "Enter height > "
      :triangle -> "Enter height > "
      :ellipse -> "Enter minor radius > "
    end
    get_number prompt
  end

  defp get_number prompt do
    input = IO.gets prompt
    value = String.strip input
    cond do
      integer? value ->
        {integer, _decimal} = Integer.parse value
        integer
      float? value ->
        {float, _} = Float.parse value
        float
      true ->
        IO.puts "Not a valid number"
        :error
    end
  end

  def integer? value do
    Regex.match?(~r/^[+|-]?\d+$/, value)
  end

  def float? value do
    Regex.match?(~r/^[+|-]?\d+\.\d+([e|E][+-]?\d+(\.\d+)?)?$/, value)
  end

  defp char_to_area char do
    case char do
      "R" -> :rectangle
      "T" -> :triangle
      "E" -> :ellipse
      _ -> :unknown
    end
  end
end
