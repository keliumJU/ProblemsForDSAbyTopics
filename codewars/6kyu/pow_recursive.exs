defmodule Problem do
  def powi(a, b), do: pow_acc(a, b, 1)

  def pow_acc(_a, 0, acc) do
    acc
  end

  def pow_acc(a, b, acc) do
    pow_acc(a, b-1, acc * a)
  end


end

IO.inspect Problem.powi(5, 3)
