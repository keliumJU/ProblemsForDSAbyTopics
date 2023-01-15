defmodule Math do
  # 5 = 1*2*3*4*5
  # 5! = 4!*5
  def fac(n) when n == 0 do
    1
  end

  def fac(n) do
    n * fac(n-1)
  end
end

IO.inspect Math.fac(5)
