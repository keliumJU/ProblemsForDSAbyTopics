defmodule KitchenCalculator do
  def get_volume({_, volume}), do: volume
  def to_milliliter({:cup, volume}), do: {:milliliter, 240 * volume}
  def to_milliliter({:fluid_ounce, volume}), do: {:milliliter, 30 * volume}
  def to_milliliter({:teaspoon, volume}), do: {:milliliter, 5 * volume}
  def to_milliliter({:tablespoon, volume}), do: {:milliliter, 15 * volume}
  def to_milliliter({:milliliter, volume}), do: {:milliliter, 1 * volume}
  def from_milliliter(tuple, :cup), do: {:cup, get_volume(tuple) / 240}
  def from_milliliter(tuple, :fluid_ounce), do: {:fluid_ounce, get_volume(tuple) / 30}
  def from_milliliter(tuple, :teaspoon), do: {:teaspoon, get_volume(tuple) / 5}
  def from_milliliter(tuple, :tablespoon), do: {:tablespoon, get_volume(tuple) / 15}
  def from_milliliter({_unit, volume}, :milliliter), do: {:milliliter, volume}
  def convert(tuple, :cup), do: {:cup, (to_milliliter(tuple) |> get_volume()) / 240}
  def convert(tuple, :fluid_ounce), do: {:fluid_ounce, (to_milliliter(tuple) |> get_volume()) / 30}
  def convert(tuple, :teaspoon), do: {:teaspoon, (to_milliliter(tuple) |> get_volume()) / 5}
  def convert(tuple, :tablespoon), do: {:tablespoon , (to_milliliter(tuple) |> get_volume()) / 15}

end

IO.inspect(KitchenCalculator.get_volume({:cup, 2.0}))
IO.inspect(KitchenCalculator.to_milliliter({:cup, 2.5}))
IO.inspect(KitchenCalculator.from_milliliter({:milliliter, 1320.0}, :cup))
IO.inspect(KitchenCalculator.convert({:teaspoon, 9}, :tablespoon))
IO.inspect(KitchenCalculator.convert({:tablespoon, 320}, :cup))
