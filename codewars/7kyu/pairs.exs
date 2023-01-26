#url: https://www.codewars.com/kata/5a3e1319b6486ac96f000049/train/elixir
defmodule Kata do
  def pairs(ls) do
    ls |> Enum.chunk_every(2, 2, :discard) |>
    Enum.reduce(0, fn v, acc ->
      if abs(Enum.at(v, 0) - Enum.at(v, 1)) == 1 do
        acc + 1
      else
        acc
      end
    end)
  end
end

IO.inspect Kata.pairs([1,2,5,8,-4,-3,7,6,5])
IO.inspect Kata.pairs([21, 20, 22, 40, 39, -56, 30, -55, 95, 94])
