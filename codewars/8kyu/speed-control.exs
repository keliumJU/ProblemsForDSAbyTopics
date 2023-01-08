defmodule SpeedControl do

  def gps(s, x) do
    if length(x) <= 1 do
      0
    else
      maxim = x |>
      Enum.chunk_every(2, 1, :discard) |>
      Enum.map(fn arr ->
        a = Enum.at(arr, 0)
        b = Enum.at(arr, 1)

        (3600 * abs(a-b) / s)
      end) |>
      Enum.max()
      floor(maxim)
    end

  end
end

IO.inspect SpeedControl.gps(15, [0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25])
