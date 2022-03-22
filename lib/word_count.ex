defmodule WordCount do

  def intro() do
    IO.gets("Hello!  Welcome to wordcount, what file would you like to count?\n")
    |> String.trim()
    |> format_path()
    |> counter()
  end

  def format_path(filename) do
    Path.expand("../#{filename}")
  end

  def counter(filename) do
    File.read!(filename)
    |> String.split(~r{(\\n|[^\w'])+})
    |> Enum.map(fn x -> String.trim(x) end)
    |> Enum.filter(fn x -> x != "" end)
    |> Enum.count()
  end
end
