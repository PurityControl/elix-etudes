defmodule Geom do
@moduledoc """
This module is a geometry module for the Elixir Etudes Exercises.
"""
@vsn 0.1

@doc """
Calculates the area of a rectangle, triangle or ellipse.
"""
@spec area(atom(), number(), number()) :: number()

def area :rectangle, width, height do
  width * height
end

def area :triangle, width, height do
  0.5 * width * height
end

def area :ellipse, width, height do
  :math.pi * width * height
end

end

