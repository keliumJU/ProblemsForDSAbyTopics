defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      level == 0 and legacy? -> :unknown
      level == 0 and legacy? == false -> :trace
      level == 1 and legacy? -> :debug
      level == 1 and legacy? == false -> :debug
      level == 2 and legacy? -> :info
      level == 2 and legacy? == false -> :info
      level == 3 and legacy? -> :warning
      level == 3 and legacy? == false -> :warning
      level == 4 and legacy? -> :error
      level == 4 and legacy? == false -> :error
      level == 5 and legacy? == false -> :fatal
      level == 5 and legacy? -> :unknown
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    cond do
      to_label(level, legacy?) in ([:error, :fatal]) -> :ops
      to_label(level, legacy?) == :unknown and legacy? -> :dev1
      to_label(level, legacy?) == :unknown and legacy? == false -> :dev2
      true -> false
    end
  end
end

IO.inspect(LogLevel.to_label(1, true))
IO.inspect(LogLevel.to_label(0, true))
IO.inspect(LogLevel.alert_recipient(6, false))
IO.inspect(LogLevel.alert_recipient(0, false))
