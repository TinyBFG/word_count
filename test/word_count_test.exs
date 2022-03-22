defmodule WordCountTest do
  use ExUnit.Case
  doctest WordCount

  test "counter/1 returns the correct number of words for the file" do
    filename = Path.expand("../word_count/mix.exs")

    count = WordCount.counter(filename)

    assert count == 71
  end
end
