defmodule Powers do
  import Kernel, except: [raise: 2, raise: 3]

  @moduledoc """
  This module calculates nth root for Etude 4-4 using helper function.
  raise feature retained from Etude 4-3.
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
    raise(number, expt, 1)
  end

  def raise(number, expt) do
    1 / raise(number, -expt)
  end

  defp raise(_number, 0 , acc) do
    acc
  end

  defp raise(number, expt, acc) do
    raise(number, expt - 1, acc * number)
  end

  @doc """
  return the nth-root of number
  """
  @spec nth_root(number(), number()) :: number()

  def nth_root number, nth_root do
    approximation = number / 2.0
    nth_root  number, nth_root, approximation
  end

  defp nth_root number, nth_root, approximation do
    IO.puts "Current guess is #{approximation}"
    f = raise(approximation, nth_root) - number
    f_prime = nth_root * raise(approximation, nth_root - 1)
    next = approximation - f / f_prime
    cond do
      abs(next - approximation) < 1.0e-8 ->
        next
      true ->
        nth_root number, nth_root, next
    end
  end
end

