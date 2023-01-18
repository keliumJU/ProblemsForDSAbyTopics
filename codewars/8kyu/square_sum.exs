#url: https://www.codewars.com/kata/515e271a311df0350d00000f/train/elixir
defmodule Kata do
  def square_sum(nums) do
    nums |>
    Enum.reduce(0, fn x, acc ->
      acc + Integer.pow(x, 2)
    end)
  end
end

IO.inspect Kata.square_sum([0, 3, 4, 5])
