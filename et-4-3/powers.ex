defmodule Powers do
  import Kernel, except: [raise: 2]

  @moduledoc """
  This module calculates powers for Etued 4-2.
  """
  @vsn 0.1

  @doc """
  return the power of number by its exponent
  """
  @spec raise(number(), number()) :: number()

  def raise(_number, 0) do
    1
  end

  def raise(number, 1) do
    number
  end

  def raise(number, expt) when expt > 1 do
    number * raise  number, expt - 1
  end

  def raise(number, expt) do
    1 / raise(number, -expt)
  end

end

