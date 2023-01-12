defmodule Statistics do
  def results(s) do
    if s == "" do
      ""
    else
      base = String.split(s, ",", trim: true)
      clean_s = Enum.map(base, fn x -> String.trim(x) end)
      arr_seconds = Enum.map(clean_s, fn x ->
        arr = String.split(x, "|") |>
        Enum.map(fn n -> String.to_integer(n) end)
        (Enum.at(arr, 0) * 3600) + (Enum.at(arr, 1) * 60) + Enum.at(arr, 2)
      end) |>
      Enum.sort()
      "Range: #{get_range(arr_seconds)} Average: #{get_avg(arr_seconds)} Median: #{get_median(arr_seconds)}"
    end
  end

  defp get_median(arr_seconds) do
    len = length(arr_seconds)
    if rem(len, 2) == 0 do
      median = trunc((Enum.at(arr_seconds, trunc(len/2)-1) + Enum.at(arr_seconds, trunc(len/2)))/2)
      get_format(median)
    else
      median = Enum.at(arr_seconds, trunc(len/2))
      get_format(median)
    end
  end

  defp get_avg(arr_seconds) do
    avg_seconds = trunc(Enum.sum(arr_seconds) / length(arr_seconds))
    get_format(avg_seconds)
  end

  defp get_range(arr_seconds) do
    max = Enum.max(arr_seconds)
    min = Enum.min(arr_seconds)

    range_seconds = max - min
    get_format(range_seconds)

  end

  defp get_format(total_seconds) do
    hours = trunc(total_seconds / 3600)
    new_seconds = total_seconds - (hours * 3600)
    minutes = trunc(new_seconds / 60)
    final_seconds = new_seconds - (minutes * 60)
    "#{add_zero(hours)}|#{add_zero(minutes)}|#{add_zero(final_seconds)}"
  end

  defp add_zero(value) do
    len = Integer.to_string(value) |>
    String.graphemes() |>
    length()

    if len == 1 do
      "0#{value}"
    else
      value
    end
  end
end

IO.inspect Statistics.results("01|15|59, 1|47|6, 01|17|20, 1|32|34, 2|3|17")
IO.inspect Statistics.results("01|15|59, 1|47|16, 01|17|20, 1|32|34, 2|17|17")
IO.inspect Statistics.results("02|15|59, 2|47|16, 02|17|20, 2|32|34, 2|17|17, 2|22|00, 2|31|41")
