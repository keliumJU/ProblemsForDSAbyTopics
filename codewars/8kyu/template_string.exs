#url: https://www.codewars.com/kata/55a14f75ceda999ced000048/train/elixir
defmodule Kata do
  def template_string(obj, ref) do
    "#{obj} are #{ref}"
  end
end

IO.inspect (Kata.template_string("Animasl", "good"))
