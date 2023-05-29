defmodule LanguageList do
  def new() do
    []
  end

  def add(list, item) do
    [item | list]
  end

  def remove([_head | list]) do
    list
  end

  def first([first | _rest]) do
    first
  end

  def count(list) do
    length(list)
  end

  def functional_list?(list) do
    "Elixir" in list
  end
end

language_list = LanguageList.new()
language_list = LanguageList.add(language_list, "Elixir")
language_list = LanguageList.add(language_list, "cloudjure")
language_list = LanguageList.add(language_list, "c++")
language_list = LanguageList.remove(language_list)
count = LanguageList.count(language_list)
is_functional = LanguageList.functional_list?(language_list)

IO.inspect(is_functional)
