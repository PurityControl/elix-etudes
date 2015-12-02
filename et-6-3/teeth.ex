defmodule Teeth do
  def alert pocket_depths do
    alert pocket_depths, 1, []
  end

  defp alert [depths | pocket_depths], count, acc do
    if needs_attention? depths do
      alert pocket_depths, count + 1, [count | acc]
    else
      alert pocket_depths, count + 1, acc
    end
  end

  defp alert [], _count, acc do
    Enum.reverse acc
  end

  defp needs_attention? depths do
    Stats.maximum(depths) >= 4
  end
end
