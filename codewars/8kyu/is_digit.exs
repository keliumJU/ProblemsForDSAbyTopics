defmodule Validate do
  def is_digit?(s) do
    if length(String.graphemes(s)) == 1 do
      <<n::utf8>> = s
      if n >= 48 && n <= 57 do
        true
      else
        false
      end
    else
      false
    end
  end
end

IO.inspect Validate.is_digit?("5")
IO.inspect Validate.is_digit?("0")
IO.inspect Validate.is_digit?("9")
IO.inspect Validate.is_digit?("9 ")
IO.inspect Validate.is_digit?("s")
