#url: https://www.codewars.com/kata/57a0e5c372292dd76d000d7e/train/elixir
defmodule Kata do
  def repeat_str(n, s)do
    accumulator(n, s, "")
  end

  def accumulator(n, _s, acc) when n == 0 do
    acc
  end
  def accumulator(n, s, acc) do
    accumulator(n-1, s, acc<>s)
  end
end

IO.inspect Kata.repeat_str(3, "*")
