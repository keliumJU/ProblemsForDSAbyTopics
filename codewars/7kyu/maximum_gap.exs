#url: https://www.codewars.com/kata/5a7893ef0025e9eb50000013/train/elixir
defmodule Kata do
  def max_gap(nums) do
    nums |>
    Enum.sort() |>
    Enum.chunk_every(2, 1, :discard) |>
    Enum.map(fn [x, y] ->
      abs(x-y)
    end) |>
    Enum.max()
  end
end

IO.inspect Kata.max_gap([13, 10, 2, 9, 5])
IO.inspect Kata.max_gap([13, 3, 5])
IO.inspect Kata.max_gap([24, 299, 131, 14, 26, 25])
