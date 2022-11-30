defmodule SumMix do
  def sumMin(list) do
    Enum.map(list, fn x -> 
      if is_bitstring(x) do
        Integer.parse(x) |> elem(0) 
      else
        x
      end
    end) |> 
    Enum.sum()
  end
end

IO.puts SumMix.sumMin([1,2,3])
IO.puts SumMix.sumMin(["1",2,"3"])
IO.puts SumMix.sumMin(["1","2","3"])

#Change of approach
#list of comprehensions: https://www.mitchellhanberg.com/the-comprehensive-guide-to-elixirs-for-comprehension/
