defmodule Math do
  # 1 1 2 3 5 8 13 21 34 ...
  def fibo_nth(n) when n <= 2 do
    1
  end

  def fibo_nth(n) do
    (fibo_nth(n-1) + fibo_nth(n-2))
  end
end

IO.inspect Math.fibo_nth(3)
