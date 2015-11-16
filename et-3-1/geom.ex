defmodule Geom do
  @moduledoc """
  This is the geometry module required for the Elixir Etudes exercises.
  """
  @vsn 0.1

  @doc """
  returns the area of a rectangle, ellipse or triangle providing the
  arguments are positive integers
  """
  @spec area(atom(), number(), number()) :: number()

  def area(:rectangle, length, width) when length > 0 and width > 0 do
    width * length
  end

  def area(:triangle, length, width) when length > 0 and width > 0 do
    0.5 * width * length
  end

  def area(:ellipse, length, width) when length > 0 and width > 0 do
    :math.pi * width * length
  end
end

