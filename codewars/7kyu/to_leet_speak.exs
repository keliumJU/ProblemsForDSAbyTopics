#url=> https=>//www.codewars.com/kata/57c1ab3949324c321600013f/train/elixir
defmodule Kata do
  def translate(str) do
  leet = %{
    "A" => "@",
    "B" => "8",
    "C" => "(",
    "D" => "D",
    "E" => "3",
    "F" => "F",
    "G" => "6",
    "H" => "#",
    "I" => "!",
    "J" => "J",
    "K" => "K",
    "L" => "1",
    "M" => "M",
    "N" => "N",
    "O" => "0",
    "P" => "P",
    "Q" => "Q",
    "R" => "R",
    "S" => "$",
    "T" => "7",
    "U" => "U",
    "V" => "V",
    "W" => "W",
    "X" => "X",
    "Y" => "Y",
    "Z" => "2",
    " " => "~"
  }

  str |>
  String.graphemes() |>
  Enum.map(fn c -> Map.get(leet, c) end) |>
  Enum.join() |>
  String.replace("~", " ")

  end
end

IO.inspect Kata.translate("HELLO WORLD")
IO.inspect Kata.translate("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
