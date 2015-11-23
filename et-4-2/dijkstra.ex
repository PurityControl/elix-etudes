defmodule Dijkstra do
  @moduledoc """
  This module calculate the greates common divisor of two numbers
  for Etued 4-2. It uses Dijkstra's algorithm.
  If m and n are equal then that is the gcd
  if m is greater than n the result is the gcd of m-n and n
  otherwise the result is the gcd of m and n-m
  """
  @vsn 0.1

  @doc """
  return the greatest common divisor of two numbers
  """
  @spec gcd(number(), number()) :: number()

  def gcd(dividend, dividend) do
    dividend
  end

  def gcd(dividend1, dividend2) when dividend1 > dividend2 do
    gcd(dividend1 - dividend2, dividend2)
  end

  def gcd(dividend1, dividend2) do
    # reverse call to keep logic in one place
    gcd(dividend2, dividend1)
  end
end

