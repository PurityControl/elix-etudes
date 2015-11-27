defmodule Geom do
  @moduledoc """
  This is the geometry module required for the Elixir Etudes exercises.
  Etude 4-1 uses pattern matching to distinguish between the shapes.
  """
  @vsn 0.1

  @doc """
  returns the area of a rectangle, ellipse or triangle providing the
  arguments are positive integers.
  If the shape or arguments aren't valid returns 0
  """
  @spec area({atom(), number(), number()}) :: number()

  def area({shape, length, width}) when length >= 0 and width >= 0 do
    case shape do
      :rectangle -> width * length
      :triangle ->  0.5 * width * length
      :ellipse -> :math.pi * width * length
      _ ->
        IO.puts "shape unknown"
        :ok
    end
  end

  def area({_, _, _}) do
    IO.puts "Both shapes must be greater than or equal to zero"
    :ok
  end
end

