defmodule Kata do
  def anagram?(a, b) do
    l_a = String.upcase(a) |> String.graphemes() |> Enum.sort()
    l_b = String.upcase(b) |> String.graphemes() |> Enum.sort()
    equals(l_a, l_b)
  end

  def equals([], []) do
    true
  end

  def equals([], _l_b) do
    false
  end

  def equals(_l_a, []) do
    false
  end

  def equals([h_a | _t_a] , [h_b | _t_b]) when h_a != h_b do
    false
  end

  def equals([h_a | t_a] , [h_b | t_b]) when h_a == h_b do
    equals(t_a, t_b)
  end

end

IO.inspect Kata.anagram?("foefet", "toffee")
IO.inspect Kata.anagram?("Buckethead", "DeathCubeK")
IO.inspect Kata.anagram?("dumble", "bumble")
