#url: https://www.codewars.com/kata/57158fb92ad763bb180004e7/train/elixir
defmodule Kata do
  def rain_amount(mm) do
    if mm < 40 do
     ans = 40 - mm
     "You need to give your plant #{ans}mm of water"
    else
     "Your plant has had more than enough water for today!"
    end
  end
end

IO.inspect Kata.rain_amount(50)
