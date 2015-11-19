defmodule Geom do
  @moduledoc """
  This is the geometry module required for the Elixir Etudes exercises.
  Etude 3-3 is to create a catch all expression with underscores.
  This would not normally be done as it goes against the Elixir / Erlang
  philosophy of let it crash
  """
  @vsn 0.1

  @doc """
  returns the area of a rectangle, ellipse or triangle providing the
  arguments are positive integers.
  If the shape or arguments aren't valid returns 0
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

  def area(_, _, _), do: 0
end

