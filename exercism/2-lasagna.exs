# -url: https://exercism.org/tracks/elixir/exercises/lasagna
defmodule Lasagna do
  def expected_minutes_in_oven() do
    40
  end

  def remaining_minutes_in_oven(minutes) do
    expected_minutes_in_oven() - minutes
  end

  def preparation_time_in_minutes(layers) do
    layers * 2
  end

  def total_time_in_minutes(layers, minutes) do
    preparation_time_in_minutes(layers) + remaining_minutes_in_oven(minutes)
  end

  def alarm() do
    "Ding!"
  end
end
