#url: https://www.codewars.com/kata/5506b230a11c0aeab3000c1f/train/elixir
defmodule Kata do
  @spec evaporator(number, number, number) :: number
  def evaporator(content, evap_per_day, threshold) do
    calc(content, evap_per_day, threshold, 0)
  end

  def calc(c, _e, t, d) when c <= t do
    d
  end

  def calc(c, e, t, d) do
    oper = (c * e) / 100
    calc(oper, e, t, d+1)
  end

end

IO.inspect Kata.evaporator(10, 10, 10)
