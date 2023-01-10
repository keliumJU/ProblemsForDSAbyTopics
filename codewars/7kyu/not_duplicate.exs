defmodule NotDuplicate do
  def longest(a,b) do
    new_string = a<>b

    unique(new_string)|>
    Map.keys() |>
    List.to_string()

  end

  defp unique(s) do
    Enum.reduce(String.graphemes(s), %{}, fn c, map ->
      Map.put(map, c, 1)
    end)
  end
end

IO.inspect NotDuplicate.longest("xyaabbbccccdefww", "xxxxyyyyabklmopq")
