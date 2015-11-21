defmodule Geom do
  @moduledoc """
  This is the geometry module required for the Elixir Etudes exercises.
  Etude 3-4 uses a tuple to create a function of arity one that then
  calls private functions of arity 3 to do the work.
  """
  @vsn 0.1

  @doc """
  returns the area of a rectangle, ellipse or triangle providing the
  arguments are positive integers.
  If the shape or arguments aren't valid returns 0
  """
  @spec area({atom(), number(), number()}) :: number()

  def area({shape, length, width}) do
    area(shape, length, width)
  end

  defp area(:rectangle, length, width) when length > 0 and width > 0 do
    width * length
  end

  defp area(:triangle, length, width) when length > 0 and width > 0 do
    0.5 * width * length
  end

  defp area(:ellipse, length, width) when length > 0 and width > 0 do
    :math.pi * width * length
  end

  defp area(_, _, _), do: 0
end

