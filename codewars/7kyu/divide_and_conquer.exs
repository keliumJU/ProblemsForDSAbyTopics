defmodule Kata do
  def div_con(x) do
    naturals = x |>
    Enum.reduce(0, fn v, acc ->
      if is_binary(v) == false do
        acc + v
      else
        acc
      end
    end)

    strings = x |>
    Enum.reduce(0, fn v, acc ->
      if is_binary(v) do
        acc + String.to_integer(v)
      else
        acc
      end
    end)
    naturals - strings
  end
end


IO.inspect Kata.div_con(["5","0",9,3,2,1,"9",6,7])
IO.inspect Kata.div_con([9,3,"7","3"])
IO.inspect Kata.div_con(["3",6,6,0,"5",8,5,"6",2,"0"])
