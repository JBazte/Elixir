defmodule EnumOperationsTest do
  use ExUnit.Case
  doctest EnumOperations

  test "greets the world" do
    assert EnumOperations.hello() == :world
  end

  test "count list" do
    assert EnumOperations.count([1,2,3,4,5]) == 5
  end

  test "reverse list" do
    assert EnumOperations.reverse([1,2,3,4,5]) == [5, 4, 3, 2, 1]
  end

  test "concat list" do
    assert EnumOperations.concat([[1, 2, 3], [4,5]]) == [1, 2, 3, 4, 5]
  end

  test "filter list" do
    assert EnumOperations.filter([1, 2, 3, 4, 5], fn x -> rem(x, 2) == 0 end) == [2, 4]
  end

  test "fizzbuzz" do
    assert FizzBuzz.fuzzle(0,0,1) == "FizzBuzz"
    assert FizzBuzz.fuzzle(0,1,1) == "Fizz"
    assert FizzBuzz.fuzzle(1,0,1) == "Buzz"
    assert FizzBuzz.fuzzle(1,1,0) == 0
  end

  test "count text" do
    assert WordCount.word_count("I like apples because apples go crunch in my mouth")
    == %{"I" => 1, "apples" => 2, "because" => 1, "crunch" => 1, "go" => 1, "in" => 1, "like" => 1, "mouth" => 1, "my" => 1}
  end
end
