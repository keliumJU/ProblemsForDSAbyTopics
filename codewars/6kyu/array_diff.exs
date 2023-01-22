defmodule Kata do
  def array_diff(a, []) do
    a
  end
  def array_diff([], _b) do
    []
  end
  def array_diff(a, b) do
    list = a |>
    Enum.map(fn v ->
      if v in b do
        "-"
      else
        v
      end
    end)

    Enum.filter(list, fn v -> is_binary(v) == false end)
  end
end

IO.inspect Kata.array_diff([1,2,3], [1,2])
