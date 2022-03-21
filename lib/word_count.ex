defmodule WordCount do

  def intro() do
    filename = IO.gets("Hello!  Welcome to wordcount, what file would you like to count\n")
            |> String.trim()
            |> IO.inspect()
            #|> counter()
  end

  def counter(filename) do

  end
end
