defmodule AskArea do
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
    input = IO.gets prompt
    value = String.strip input
    {integer, _decimal} = Integer.parse value
    integer
  end

  defp get_height shape do
    prompt = case shape do
      :rectangle -> "Enter height > "
      :triangle -> "Enter height > "
      :ellipse -> "Enter minor radius > "
    end
    input = IO.gets prompt
    value = String.strip input
    {integer, _decimal} = Integer.parse value
    integer
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
