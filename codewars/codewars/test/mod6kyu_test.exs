defmodule Mod6kyuTest do
  use ExUnit.Case
  doctest Mod6kyu

  defp mexican_wave_testing(str, exp) do
    actual = Mod6kyu.mexican_wave str
    assert actual == exp
  end

  test "mexican wave basic test" do
    mexican_wave_testing "a       b    ", ["A       b    ", "a       B    "]
    mexican_wave_testing "this is a few words", ["This is a few words", "tHis is a few words", "thIs is a few words", "thiS is a few words", "this Is a few words", "this iS a few words", "this is A few words", "this is a Few words", "this is a fEw words", "this is a feW words", "this is a few Words", "this is a few wOrds", "this is a few woRds", "this is a few worDs", "this is a few wordS"]
    mexican_wave_testing "", []
    mexican_wave_testing " gap ", [" Gap ", " gAp ", " gaP "]
  end
end
