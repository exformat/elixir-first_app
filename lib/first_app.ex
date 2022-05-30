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
    calcPI()
  end

  def calcPI() do
    PI = 3 + lineNilacant(2, 0)
  end


  def lineNilacant(start, result) do
    a = start
    b = start + 1
    c = start + 2

    if start < 1_000_000 do
     result = result + 4 / (a * b * c) - lineNilacant(c, result)
    else
      result
    end


  end
end
