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

  def filter([[] | t], r) do
    if t != [] do
      filter(t, r)
    else
      []
    end
  end

  def filter([h | t], r) do
    if r.(h) do
      if t != [] do
        [h | filter(t, r)]
      else
        [h]
      end
    else
      filter([[] | t], r)
    end
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
