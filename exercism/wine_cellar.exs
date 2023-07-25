defmodule WineCellar do
  def explain_colors, do:
    [
      white: "Fermented without skin contact.",
      red: "Fermented with skin contact using dark-colored grapes.",
      rose: "Fermented with some skin contact, but not enough to qualify as a red wine."
    ]
  def filter(kwl, color, opts \\ []) do
    Enum.flat_map(kwl, fn {wine, variety} ->
        case color == wine && filter_opts(opts, Tuple.to_list(variety)) do
          true -> [variety]
          false -> []
        end
      end)
  end

  defp filter_opts([], _variety), do: true
  defp filter_opts([{_key, value} | tail], variety) do
    case value in variety do
     true -> filter_opts(tail, variety)
     false -> false
    end
  end
end

ans = WineCellar.filter(
  [
    white: {"Chardonnay", 2015, "Italy"},
    white: {"Chardonnay", 2014, "France"},
    rose: {"Dornfelder", 2018, "Germany"},
    red: {"Merlot", 2015, "France"},
    white: {"Riesling ", 2017, "Germany"},
    white: {"Pinot grigio", 2015, "Germany"},
    red: {"Pinot noir", 2016, "France"},
    red: {"Pinot noir", 2013, "Italy"}
  ],
  :rose)

dbg(ans)
