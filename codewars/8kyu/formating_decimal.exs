#url: https://www.codewars.com/kata/5641a03210e973055a00000d/train/elixir

defmodule Kata do
  def two_decimal_places(n) do
    Float.round(n,2)
  end
end

IO.inspect Kata.two_decimal_places(4.654)
