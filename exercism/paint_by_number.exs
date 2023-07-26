defmodule PaintByNumber do
  def palette_bit_size(cant_colors, size \\ 1) do
    cond do
      Integer.pow(2, size) >= cant_colors -> size
      Integer.pow(2, size) < cant_colors -> palette_bit_size(cant_colors, size+1)
    end
  end
end

IO.inspect(PaintByNumber.palette_bit_size(13))
