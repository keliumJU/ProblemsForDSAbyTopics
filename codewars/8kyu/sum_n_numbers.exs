defmodule SumN do
  def sumation(n) do
    trunc((n*(n+1))/2)
  end
end

IO.inspect SumN.sumation(8)
