#url: https://www.codewars.com/kata/5663f5305102699bad000056/train/elixir
defmodule Kata do
  def mxdiflg([], []) do
    -1
  end

  def mxdiflg(_a1, []) do
    -1
  end

  def mxdiflg([], _a2) do
    -1
  end

  def mxdiflg(a1, a2) do
    va1 = a1 |>
    Enum.map(fn v -> String.graphemes(v) |> length() end)
    va2 = a2 |>
    Enum.map(fn v -> String.graphemes(v) |> length() end)

    va1 |>
    Enum.map(fn v ->
      na2 = Enum.map(va2, fn x -> abs(x-v) end)
      Enum.max(na2)
    end) |>
    Enum.max()
  end
end

IO.inspect Kata.mxdiflg(["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"], ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"])
