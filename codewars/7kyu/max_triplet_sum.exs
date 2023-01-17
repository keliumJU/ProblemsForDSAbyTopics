defmodule Kata do
  def max_tri_sum(nums) do
    nums |>
    Enum.uniq() |>
    Enum.sort(:desc) |>
    get_tri(0, 0)
  end

  def get_tri(_list, it, acc) when it == 3 do
    acc
  end

  def get_tri([head | tail], it, acc) do
    get_tri(tail, it+1, acc+head)
  end
end

IO.inspect Kata.max_tri_sum([3, 2, 6, 8, 2, 3])
IO.inspect Kata.max_tri_sum([-14, -12, -7, -42, -809, -14, -12])
