defmodule Mod8kyu do
  @moduledoc """
    In this module we can add many problems of level 8kyu in codewars
  """

  @doc """
    This function sum any elemnt of list, this element can be a numeric character

    ##Example

        iex> Mod8kyu.sumMin([1,2,3])
        6

        iex> Mod8kyu.sumMin(["1", "2", 3])
        6
  """
  @spec sumMin(list(any())) :: number()
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
