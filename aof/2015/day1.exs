defmodule NotQuiteList do
  def floor_arrival(road) do
    road
    |> String.graphemes()
    |> Enum.reduce(0, fn x, acc ->
      case x do
        "(" -> acc + 1
        ")" -> acc - 1
      end
    end)
  end
end

IO.inspect(NotQuiteList.floor_arrival("(())"))
IO.inspect(NotQuiteList.floor_arrival("((("))
IO.inspect(NotQuiteList.floor_arrival("))((((("))
IO.inspect(NotQuiteList.floor_arrival("())"))
IO.inspect(NotQuiteList.floor_arrival(")())())"))
