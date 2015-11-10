defmodule Geom do
@moduledoc """ 
This module is a Geometry module created for the Elixir Etudes
"""

@vsn 0.1

@doc """
Given a width and length returns the area
"""

@spec area(number(), number()) :: number()

def area width, length do
  width * length
end

end
