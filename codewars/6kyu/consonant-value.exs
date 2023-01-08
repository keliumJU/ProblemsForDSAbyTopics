defmodule ConsoVal do
  def conso_sum(s) do
    regex = ~r/a|e|i|o|u/
    arr = String.split(s, regex, trim: true)

    arr |>
    Enum.map(fn sub ->
      if sub != "" do
        sub |>
        to_charlist() |>
        Enum.reduce(0, fn c, acc ->
          acc + (c - 96)
        end)
      end
    end) |>
    Enum.max()

  end
end

IO.inspect ConsoVal.conso_sum("zodiacs")
