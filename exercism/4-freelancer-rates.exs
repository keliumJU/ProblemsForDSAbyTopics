defmodule FreelancerRates do
  def daily_rate(hour_rate) do
    hour_rate * 8
  end

  def apply_discount(price, percent) do
    price - ((price * percent) / 100)
  end

  def monthly_rate(hourly_rate, discount) do
    with_discount = apply_discount(hourly_rate, discount)
    daily_rate(with_discount) * 22
  end

  def days_in_budget(budget, hourly_rate, discount) do
    with_discount = apply_discount(hourly_rate, discount)
    budget / daily_rate(with_discount)
    |> Float.round(1)
  end
end

IO.inspect FreelancerRates.days_in_budget(20000, 80, 11.0)
IO.inspect FreelancerRates.montly(20000, 80, 11.0)
