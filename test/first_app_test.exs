defmodule FIRST_APPTest do
  use ExUnit.Case
  doctest FIRST_APP

  test "greets the world" do
    assert FIRST_APP.hello() == :world
  end
end
