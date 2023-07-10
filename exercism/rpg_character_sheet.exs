defmodule RPG.CharacterSheet do
  def welcome, do: IO.puts("Welcome! Let's fill out your character sheet together.")
  def ask_name, do: String.trim(IO.gets("What is your character's name?\n"))
  def ask_class, do: String.trim(IO.gets("What is your character's class?\n"))
  def ask_level, do: String.trim(IO.gets("What is your character's level?\n")) |> String.to_integer()
  def run do
    welcome()
    character = %{
      name: ask_name(),
      class: ask_class(),
      level: ask_level()
     }
    IO.inspect(character, label: "Your character")
  end
end

IO.inspect(RPG.CharacterSheet.run)
