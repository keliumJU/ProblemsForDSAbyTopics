defmodule FreelancerRates do
  def daily_rate(hour_rate) do
    (hour_rate+(0.0)) * 8
  end

  def apply_discount(price, percent) do
    price - ((price * percent) / 100)
  end

  def monthly_rate(hourly_rate, discount) do
    with_discount = apply_discount(hourly_rate, discount)
    daily_rate(with_discount) * 22
    |> Float.ceil(2)
    |> trunc()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    with_discount = apply_discount(hourly_rate, discount)
    budget / daily_rate(with_discount)
    |> Float.round(1)
  end
end

IO.inspect FreelancerRates.days_in_budget(20000, 80, 11.0)
IO.inspect FreelancerRates.monthly_rate(65.2, 0.0)
IO.inspect FreelancerRates.apply_discount(111.11, 13.5)
