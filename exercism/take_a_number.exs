defmodule TakeANumber do
  parent = self()
  def start() do
    spawn(fn -> loop(0) end)
  end

  def loop(last_number) do
    receive do
      {:report_state, sender} ->
        send(sender, last_number)
        loop(last_number)
      {:take_a_number, sender} ->
        send(sender, last_number+1)
        loop(last_number+1)
      :stop -> nil
      _ -> loop(last_number)
    end
  end
end

machine_pid = TakeANumber.start()
dbg(machine_pid)
dbg(send(machine_pid, {:report_state, self()}))
