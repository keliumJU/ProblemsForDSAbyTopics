defmodule Username do
  @latin_substitute ['ä': 'ae', 'ö': 'oe', 'ü': 'ue', 'ß': 'ss']
  def sanitize(username) do
    username
    |> Enum.map(fn c ->
      if c in ~c"abcdefghijklmnopqrstuvwxyz_ßäöü" do
        [Keyword.get(@latin_substitute, List.to_atom([c]), replace(c))]
      end
    end)
    |> Enum.join()
    |> String.to_charlist()
  end

  def replace(char) when (char < 97 or char > 122) and char != 95, do: ''
  def replace(char), do: char
end


IO.inspect(Username.sanitize(~c""))
IO.inspect(Username.sanitize(~c"cäcilie_weiß"))
#IO.inspect(Username.sanitize('mark_fischer$$$'))
#IO.inspect(Username.sanitize('schmidt1985'))
