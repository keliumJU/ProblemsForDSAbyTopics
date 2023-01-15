#url: https://www.codewars.com/kata/538835ae443aae6e03000547/train/elixir
defmodule Kata do
  def add( n ) do
    fn x ->
      n + x
    end
  end
end

IO.inspect Kata.add(3).(4)
