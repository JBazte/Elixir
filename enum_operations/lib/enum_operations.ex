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

  @doc """
  Count

  ## Examples

      iex> EnumOperations.count([1,2,3,4,5])
      5

  """
  
  def count(n) do
    count(n, 1)
  end
  
  defp count(n, c) do
    if tl(n) != [] do
      count(tl(n), c + 1)
    else
      c
    end
  end
  
  @doc """
  Reverse

  ## Examples

      iex> EnumOperations.reverse([1,2,3,4,5])
      [5, 4, 3, 2, 1]

  """

  def reverse(n) do
    reverse(n, [])
  end

  defp reverse(n, l) do
    if tl(n) != [] do
      reverse(tl(n), [hd(n) | l])
    else
      [hd(n) | l]
    end
  end

  @doc """
  Concat

  ## Examples

      iex> EnumOperations.concat([[1, 2, 3], [4,5]])
      [1, 2, 3, 4, 5]

  """

  def concat([]) do
    []
  end

  def concat([[] | tt]) do
    concat(tt)
  end

  def concat([[h | t] | tt]) do
    [h | concat([t | tt])]
  end

  @doc """
  Filter

  ## Examples

      iex> EnumOperations.filter([1, 2, 3, 4, 5], fn x -> rem(x, 2) == 0 end)
      [2, 4]

  """

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
end

defmodule FizzBuzz do
  @moduledoc """
    Documentation for `FizzBuzz`.
  """

  @doc """
  Fuzzle

  ## Examples

      iex> FizzBuzz.fuzzle(0,0,1)
      "FizzBuzz"

      iex> FizzBuzz.fuzzle(0,1,1)
      "Fizz"

      iex> FizzBuzz.fuzzle(1,0,1)
      "Buzz"

      iex> FizzBuzz.fuzzle(1,1,0)
      0

  """

  def fuzzle(a, b, c) do
    if a == 0 and b == 0 and c != 0 do
      "FizzBuzz"
    else
      if a == 0 and b != 0 and c != 0 do
        "Fizz"
      else
        if a != 0 and b == 0 and c != 0 do
          "Buzz"
        else
          c
        end
      end
    end
  end
end

defmodule WordCount do

  @moduledoc """
    Documentation for `WordCount`.
  """

  @doc """
  WordCount

  ## Examples

      iex> WordCount.word_count("I like apples because apples go crunch in my mouth")
      %{
        "I" => 1,
        "apples" => 2,
        "because" => 1,
        "crunch" => 1,
        "go" => 1,
        "in" => 1,
        "like" => 1,
        "mouth" => 1,
        "my" => 1
      }

  """

  def word_count(p) do
    String.split(p)
    |> Enum.reduce(%{}, fn x, acc -> Map.update(acc, x, 1, &(&1 + 1)) end)
  end
end
