defmodule EnumOperations do
  @moduledoc """
  Documentation for `EnumOperations`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> EnumOperations.hello()
      :world

  """
  def hello do
    :world
  end

  def count(n) do
    count(n, 1)
  end

  def reverse(n) do
    list = []
    reverse(n, list)
  end

  def concat(n) do
    list = []
    concat(n, list)
  end
  
  defp count(n, c) do
    aux = tl(n)
    if aux != [] do
      count(aux, c + 1)
    else
      c
    end
  end

  defp reverse(n, l) do
    if tl(n) != [] do
      l = [hd(n) | l]
      aux = tl(n)
      reverse(aux, l)
    else
      l = [hd(n) | l]
      l
    end
  end

  defp concat(n, l) do
    if tl(n) != [] do
      aux = tl(n)
      for x <- hd(n) do
        l = l ++ x
        IO.puts l
      end
      concat(aux, l)
    else
      for x <- hd(n) do
        l = l ++ x
      end
      l
    end
  end
end
