defmodule Conditional do
  def _if(boolean, fthen, felse) do
    if boolean do
      fthen.()
    else
      felse.()
    end

  end

end


val = Conditional._if(true, fn -> :trut end, fn -> :not end)

if val == :trut do
  IO.puts "its ok"
else
  IO.puts "not ok :*("
end
