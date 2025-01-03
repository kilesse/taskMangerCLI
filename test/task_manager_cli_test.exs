defmodule TaskManagerCliTest do
  use ExUnit.Case
  doctest TaskManagerCli

  test "greets the world" do
    assert TaskManagerCli.hello() == :world
  end
end
