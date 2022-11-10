defmodule HtppApiTest do
  use ExUnit.Case
  doctest HtppApi

  test "greets the world" do
    assert HtppApi.hello() == :world
  end
end
