#url: https://www.codewars.com/kata/564057bc348c7200bd0000ff/train/elixir

defmodule Kata do
  def thirt(n) do
    map = remainders(n)
    base = stationary(n , map)
    #base case
    if(base == n) do
      base
    else
      #recursive case
      thirt(base)
    end
  end

  def remainders(values) do
    Integer.digits(values) |>
    Enum.with_index() |>
    Enum.reduce(%{}, fn {_v, i}, map ->
      Map.put(map, i, rem(Integer.pow(10, i),13))
    end)
  end

  def stationary(values , map_remainder) do
    Integer.digits(values) |> Enum.reverse() |> Enum.with_index() |>
    Enum.reduce(0, fn {v, i}, acc ->
      acc + (v * Map.get(map_remainder, i))
    end)
  end
end

IO.inspect Kata.thirt(1234567)
IO.inspect Kata.thirt(8529)
IO.inspect Kata.thirt(85299258)
