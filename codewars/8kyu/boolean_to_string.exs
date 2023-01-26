#url: https://www.codewars.com/kata/551b4501ac0447318f0009cd/train/elixir
defmodule Kata do
  def boolean_to_string(b) do
    if b == true do
      "true"
    else
      "false"
    end
  end
end

IO.inspect Kata.boolean_to_string(true)
IO.inspect Kata.boolean_to_string(false)
