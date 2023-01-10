defmodule RangeNumbers do
  def range(a,b) do
    for arr <- a..b do
      arr
    end
  end
end

IO.inspect RangeNumbers.range(-5,5)
