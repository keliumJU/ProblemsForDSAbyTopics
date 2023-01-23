#url: https://www.codewars.com/kata/57a049e253ba33ac5e000212/train/elixir
defmodule Kata do
  def factorial(0) do
    1
  end
  def factorial(n) do
    n * factorial(n-1)
  end
end

IO.inspect Kata.factorial(17)
