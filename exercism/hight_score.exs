defmodule HighScore do
  def new, do: %{}

  def add_player(map, player, score \\ 0), do: Map.put(map, player, score)

  def remove_player(map, player), do: Map.delete(map, player)

  def reset_score(map, player), do: Map.put(map, player, 0)

  def update_exist_player(map, player, score), do: Map.update!(map, player, &(&1 + score))

  def update_score(map, player, score) do
    case Map.has_key?(map, player) do
      true -> update_exist_player(map, player, score)
      false -> add_player(map, player) |> update_exist_player(player, score)
    end
  end

  def get_players(map), do: Enum.map(map, fn {k, _v} -> k end)

end

score_map = HighScore.new
score_map = HighScore.update_score(score_map, "Jose valim", 3214)

IO.inspect(score_map)
