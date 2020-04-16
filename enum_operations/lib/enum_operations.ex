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
    reverse(n, [])
  end

  def concat([]) do
    []
  end

  def concat([[] | tt]) do
    concat(tt)
  end
  
  def concat([[h | t] | tt]) do
    [h | concat([t | tt])]
  end

  def filter(l, r) do
    filter(l, r, [])
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

  defp filter(l, r, list) do
    if tl(l) != [] do
      aux = tl(l)
      num = rem hd(l), r
      if num == 0 do
        filter(aux, r, list ++ [hd(l)])
      else
      filter(aux, r, list)
      end
    end
    list ++ [hd(l)]
  end
end

defmodule FizzBuzz do
  def fuzzle(a, b, c) do
    if a == 0 and b == 0 and c != 0 do
      "FizzBuzz"
    else if a == 0 and b != 0 and c != 0 do
      "Fizz"
    else if a != 0 and b == 0 and c != 0 do
      "Buzz"
    else
      c
    end
    end
    end
  end
end

defmodule WordCount do
  def word_count(p) do
    String.split(p) |>
    Enum.reduce(%{}, fn x, acc -> Map.update(acc, x, 1, &(&1 + 1)) end)
  end
end
