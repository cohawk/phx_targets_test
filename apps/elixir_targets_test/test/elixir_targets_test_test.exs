defmodule ElixirTargetsTestTest do
  use ExUnit.Case
  doctest ElixirTargetsTest

  test "greets the world" do
    assert ElixirTargetsTest.hello() == :world
  end
end
