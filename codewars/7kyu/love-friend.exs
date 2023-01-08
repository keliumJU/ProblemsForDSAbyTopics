defmodule Kata do
  def words_sum(s) do
    abc = "abcdefghijklmnopqrstuvwxyz"
    map_abc = abc |>
    String.graphemes() |>
    Enum.with_index() |>
    Enum.reduce(%{}, fn {x, y}, acc ->
      Map.put(acc, x, y+1)
    end)

    s |>
    String.graphemes() |>
    Enum.reduce(0, fn x, acc ->
      acc + Map.get(map_abc, x)
    end)
  end
end

IO.inspect Kata.words_sum("friendship")
