defmodule Stats do
  def minimum [head | tail]  do
    minimum tail, head
  end

  def maximum [head | tail]  do
    maximum tail, head
  end

  def range lst do
    # inefficient as iterates over the list twice but reuses existing funs
    [minimum(lst), maximum(lst)]
  end

  defp minimum [head | tail], min do
    if head < min do
      minimum tail, head
    else
      minimum tail, min
    end
  end

  defp minimum [], min do
    min
  end

  defp maximum [head | tail], max do
    if head > max do
      maximum tail, head
    else
      maximum tail, max
    end
  end

  defp maximum [], max do
    max
  end
end
