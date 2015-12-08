defmodule NonFP do
  def generate_pockets teeth, prob do
    generate_pockets teeth, prob, []
  end

  defp generate_pockets [], _prob, acc do
    Enum.reverse acc
  end

  defp generate_pockets [?F | tail], prob, acc do
    generate_pockets tail, prob, [[0] | acc]
  end

  defp generate_pockets [?T | tail], prob, acc do
    generate_pockets tail, prob, [generate_tooth(prob) | acc]
  end

  defp generate_tooth prob do
    :random.seed(:erlang.now())
    if :random.uniform() <= prob do
      generate_tooth 2, 6, []
    else
      generate_tooth 3, 6, []
    end
  end

  defp generate_tooth _depth, 0, acc do
    Enum.reverse acc
  end

  defp generate_tooth depth, remaining, acc do
    generate_tooth depth, remaining - 1, [:random.uniform(3) - 2 + depth | acc]
  end
end
