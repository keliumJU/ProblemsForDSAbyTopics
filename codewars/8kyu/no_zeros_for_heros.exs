#url: https://www.codewars.com/kata/570a6a46455d08ff8d001002/train/elixir

defmodule Kata do
  def no_boring_zeros(0) do
    0
  end

  def no_boring_zeros(n) do
    n |>
    Integer.digits() |>
    Enum.reverse() |>
    pop_zero() |>
    Enum.reverse() |>
    Integer.undigits()
  end

  def pop_zero([head | tail]) when head != 0 do
    [head | tail]
  end

  def pop_zero([_head | tail]) do
    pop_zero(tail)
  end

end

IO.inspect Kata.no_boring_zeros(1450)
IO.inspect Kata.no_boring_zeros(960000)
IO.inspect Kata.no_boring_zeros(140506070)
IO.inspect Kata.no_boring_zeros(-105)
IO.inspect Kata.no_boring_zeros(0)
