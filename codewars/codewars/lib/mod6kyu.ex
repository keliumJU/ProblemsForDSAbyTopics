defmodule Mod6kyu do
  @moduledoc """
    In this module we can add only problems of 6kyu level of codewars platform
  """
  @doc """
    return a list of charlist in base to charlist and make upper only alphabet characters, so represent
    one element in the list, that element is base on original charlist

    iex> Mod6kyu.mexican_wave(" gpg ")
    [" Gpg ", " gPg ", " gpG "]
  """
  @spec mexican_wave(str::binary())::list()
  def mexican_wave(str) do
    str_list = String.graphemes(str)
    str_list_index = Enum.with_index(str_list)
    str_list_alpha = Enum.filter(str_list_index, fn {val, _index} -> val != " " end)

    for {_val, index} <- str_list_alpha do
      element = Enum.map(str_list_index, fn {val, index_map} ->
        if index == index_map do
          String.upcase(val)
        else
          val
        end
      end)
      Enum.join(element)
    end
  end
end
