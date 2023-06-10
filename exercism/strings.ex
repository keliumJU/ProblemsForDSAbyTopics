defmodule HighSchoolSweetheart do
  def first_letter(value) do
    value
    |> String.trim()
    |> String.graphemes()
    |> Enum.at(0)
  end

  def initial(value) do
    value
    |> first_letter()
    |> String.upcase()
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    full_name
    |> String.split(" ")
    |> Enum.map(fn value -> initial(value) end)
    |> Enum.join(" ")
  end

  def pair(full_name_a, full_name_b) do
"""
    ******       ******
   **      **   **      **
 **         ** **         **
**            *            **
**                         **
**     #{initials(full_name_a)}  +  #{initials(full_name_b)}     **
 **                       **
   **                   **
     **               **
       **           **
         **       **
           **   **
             ***
              *
"""
  end
end

IO.inspect(HighSchoolSweetheart.first_letter("Jane"))
IO.inspect(HighSchoolSweetheart.inital("Betty"))
IO.inspect(HighSchoolSweetheart.initials("Lance Green"))
IO.inspect(HighSchoolSweetheart.pair("Blake Miller", "Riley Lewis"))
