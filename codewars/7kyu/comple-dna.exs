defmodule Kata do
  def complementari_dna(s) do
    dna_comple = %{"A"=>"T", "T"=>"A", "C"=>"G", "G"=>"C"}
    s |>
    String.graphemes() |>
    Enum.map(fn c -> Map.get(dna_comple, c) end) |>
    Enum.join("")
  end
end

IO.inspect Kata.complementari_dna("AAAA")
IO.inspect Kata.complementari_dna("ATTGC")
