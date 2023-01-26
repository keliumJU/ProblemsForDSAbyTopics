#url: https://www.codewars.com/kata/5601409514fc93442500010b/train/elixir
defmodule Kata do
  def better_than_average(class_points, your_points) do
    avg = (Enum.sum(class_points) + your_points) / length(class_points)
    your_points >= trunc(avg)
  end
end

IO.inspect Kata.better_than_average([2,3], 5)
IO.inspect Kata.better_than_average([100, 40, 34, 57, 29, 72, 57, 88], 75)
IO.inspect Kata.better_than_average([12, 23, 34, 45, 56, 67, 78, 89, 90], 9)
IO.inspect Kata.better_than_average([89, 44, 47, 58, 2, 98, 78, 23, 11, 66, 46, 56, 93, 25, 45, 87, 21, 29, 99, 51], 56)
