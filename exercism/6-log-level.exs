defmodule LogLevel do
  def to_label(code, flag) do
    if code == 0 and flag do
      :trace
    else
      :unknown
    end
  end
  def alert_recipient(code, flag) do
    if code == -1 and flag do
      :dev1
    else
      false
    end
  end
end
