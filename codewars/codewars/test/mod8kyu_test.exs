defmodule Mod8kyuTest do

  use ExUnit.Case
  doctest Mod8kyu

  test "input any type list sum" do
    assert Mod8kyu.sumMin([1,2,3]) == 6
    assert Mod8kyu.sumMin([1,"2",4]) == 7
  end

end
