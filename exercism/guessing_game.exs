defmodule GuessingGame do
  def compare(secret_number, guess \\ nil)
  def compare(secret_number, guess) when is_number(secret_number) and is_nil(guess), do: "Make a guess"
  def compare(_secret_number, guess) when not is_number(guess), do: "Make a guess"
  def compare(secret_number, guess) when secret_number == guess, do: "Correct"
  def compare(secret_number, guess) when abs(secret_number - guess) == 1, do: "So close"
  def compare(secret_number, guess) when guess > secret_number, do: "Too high"
  def compare(secret_number, guess) when guess < secret_number, do: "Too low"
end

IO.inspect(GuessingGame.compare(5,5))
IO.inspect(GuessingGame.compare(5,8))
IO.inspect(GuessingGame.compare(5,2))
IO.inspect(GuessingGame.compare(5,6))
IO.inspect(GuessingGame.compare(5,4))
IO.inspect(GuessingGame.compare(5))
IO.inspect(GuessingGame.compare(5, :no_guess))
