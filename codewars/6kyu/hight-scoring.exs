#url: https://www.codewars.com/kata/57eb8fcdf670e99d9b000272/train/elixir
defmodule Kata do
  def abc_value() do
    "abcdefghijklmnopqrstuvwxyz" |>
    String.graphemes() |>
    Enum.with_index() |>
    Enum.reduce(%{}, fn {x, y}, acc->
      Map.put(acc, x, y+1)
    end)
  end

  def high("") do
    ""
  end

  def high(s) do
    arr = s |>
    String.split(" ", trim: true)
    scores = for x <- arr do
      acumulate(x)
    end
    order = scores |>
    Enum.with_index() |>
    Enum.sort(:desc)

    index = Enum.take_while(order, fn {v, _i} -> v == List.first(order)|>elem(0) end) |> List.last() |> elem(1)

    arr |> Enum.with_index() |> Enum.filter(fn {_v, i} -> i == index end) |> List.first() |> elem(0)

  end

  def acumulate(s) do
    weights = abc_value()
    s |>
    String.graphemes() |>
    Enum.reduce(0, fn x, acc ->
      acc + Map.get(weights, x)
    end)
  end
end

IO.inspect Kata.high("taxi i taxi a taxi up to taxi")
IO.inspect Kata.high("")
