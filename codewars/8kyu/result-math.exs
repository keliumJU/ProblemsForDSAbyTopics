defmodule Solution do
  def score(arr) do
    new_arr = arr |>
    Enum.map(fn item ->
      x = item |>
      String.split(":") |>
      Enum.at(0) |>
      Integer.parse() |>
      elem(0)

      y = item |>
      String.split(":") |>
      Enum.at(1) |>
      Integer.parse() |>
      elem(0)

      cond do
        x > y -> 3
        x == y -> 1
        x < y -> 0
      end
    end)
    new_arr |>
    Enum.sum()
  end
end

ans = Solution.score(["3:1", "2:1", "2:2", "3:3", "4:1", "0:3", "0:4", "0:0", "1:1"])
IO.inspect ans
