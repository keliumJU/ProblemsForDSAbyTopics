# -url: https://exercism.org/tracks/elixir/exercises/pacman-rules

defmodule Rules do
  def eat_ghost?(power_pellet, touching_ghost) do
    power_pellet and touching_ghost
  end

  def score?(power_pellet, touching_dot) do
    power_pellet or touching_dot
  end

  def lose?(power_pellet, touching_ghost) do
    not power_pellet and touching_ghost
  end

  def win?(eat_dots, power_pellet, touching_ghost) do
    eat_dots and not lose?(power_pellet, touching_ghost)
  end
end
