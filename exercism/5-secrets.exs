#url: https://exercism.org/tracks/elixir/exercises/secrets/edit
use Bitwise
defmodule Secrets do
  def secret_add(x) do
    fn y ->
      y+x
    end
  end

  def secret_subtract(x) do
    fn y ->
      y-x
    end
  end

  def secret_multiply(x) do
    fn y ->
      y * x
    end
  end

  def secret_divide(x) do
    fn y ->
      trunc(y / x)
    end
  end

  def secret_and(x) do
    fn y ->
      y &&& x
    end
  end

  def secret_xor(x) do
    fn y ->
      y ^^^ x
    end
  end

  def secret_combine(funx, funy) do
    fn z ->
      funy.(funx.(z))
    end
  end
end

adder = Secrets.secret_add(3)
subtractor = Secrets.secret_subtract(2)
multipler = Secrets.secret_multiply(7)
divider = Secrets.secret_divider(3)
ander = Secrets.secret_and(1)
xorer = Secrets.secret_xor(1)
combined = Secrets.secret_combine(multipler, divider)

IO.inspect combined.(6)
