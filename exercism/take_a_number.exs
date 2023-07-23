defmodule TakeANumber do
  parent = self()
  def start() do
    spawn(fn -> send(parent, {0, self()}) end)
  end

  def loop() do
    receive do
      #....rest
    end
  end
end
