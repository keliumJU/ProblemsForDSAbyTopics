defmodule NameBadge do
  def print(id, name, nil), do: "#{if id, do: "[#{id}] - "}#{name} - OWNER"
  def print(nil, name, department), do: "#{name} - #{String.upcase(department)}"
  def print(id, name, department), do: "[#{id}] - #{name} - #{String.upcase(department)}"
end

IO.inspect(NameBadge.print(67, "Katherine Willians", "Strategic Communication"))
IO.inspect(NameBadge.print(nil, "Robert Jhonson", "Procurement"))
IO.inspect(NameBadge.print(204, "Rachel Miller", nil))
IO.inspect(NameBadge.print(nil, "Rachel Miller", nil))
