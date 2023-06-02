defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount - (before_discount * (discount/100))
  end

  def monthly_rate(hourly_rate, discount) do
    daily_rate(hourly_rate) * 22
    |> apply_discount(discount)
    |> ceil()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
  end
end

IO.inspect(FreelancerRates.daily_rate(60))
IO.inspect(FreelancerRates.apply_discount(150 ,10))
IO.inspect(FreelancerRates.monthly_rate(77 ,10.5))
