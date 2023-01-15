defmodule Math do
  def map_reduce_int([], _it, map) do
    map
  end
  def map_reduce_int([head | tail], it, map) do
    map_reduce_int(tail, it+1, Map.put(map, it+1, head))
  end
end

IO.inspect Math.map_reduce_int([4,3,6,1,3], 0, %{})
