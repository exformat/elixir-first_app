defmodule FIRST_APP do
  @moduledoc """
  Documentation for `FIRST_APP`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> FIRST_APP.hello()
      :world

  """


  def hello do
    x = IO.gets("x: ") |> Integer.parse()
    y = IO.gets("y: ") |> Integer.parse()
    vector2 = {:vector2, x, y}

    IO.puts("vector: " <> vector2)
    #limit = IO.getn("please, enter limit: ", 5)
    #IO.puts("limit " <> limit)
    #calcPI()
  end


  def add(a, b) do
    a + b
  end


  def calcPI() do
    myPI = 3 + lineNilacant(2, 0)
  end


  def lineNilacant(start, result) do
    a = start
    b = start + 1
    c = start + 2

    if start < 1000 do
      result = result + 4 / (a * b * c) - lineNilacant(c, result)
    else
      result
    end
  end
end
