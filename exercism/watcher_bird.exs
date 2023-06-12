defmodule BirdCount do

  def today([]), do: nil
  def today([today | _days]), do: today

  def increment_day_count([]), do: [1]
  def increment_day_count(list) do
    [today | days] = list
    [(today+1)] ++ days
  end

  def has_day_without_birds?([]) do
    false
  end
  def has_day_without_birds?([0 | _days]) do
    true
  end
  def has_day_without_birds?([_head | days]), do: has_day_without_birds?(days)

  def total([]), do: 0
  def total([today | days]), do: (today + total(days))

  def busy_days([]), do: 0
  def busy_days([today | days]) when today >= 5, do: (1+busy_days(days))
  def busy_days([today | days]) when today < 5, do: (0+busy_days(days))
end

IO.inspect(BirdCount.today([2,5,1]))
IO.inspect(BirdCount.increment_day_count([4,0,2]))
IO.inspect(BirdCount.has_day_without_birds?([2,0,4]))
IO.inspect(BirdCount.has_day_without_birds?([3,8,1,5]))
IO.inspect(BirdCount.total([4,0,9,5]))
IO.inspect(BirdCount.busy_days([4,5,0,0,6]))
