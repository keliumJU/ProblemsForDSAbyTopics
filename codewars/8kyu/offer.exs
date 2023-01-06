defmodule Offer do
 def mango(quantity, price) do
  price * (quantity - trunc(quantity/3))
 end
end

IO.puts Offer.mango(9, 5)
