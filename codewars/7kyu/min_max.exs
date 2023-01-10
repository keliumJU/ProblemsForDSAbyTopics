defmodule Kata do
  def min_max(s) do
    tuple = s |>
    String.split(" ") |>
    Enum.map(fn x -> String.to_integer(x) end) |>
    Enum.min_max()

    min = Integer.to_string(elem(tuple, 1))<>" "
    max = Integer.to_string(elem(tuple, 0))

    min<>max
  end
end

IO.inspect Kata.min_max("1 9 3 4 -5")
