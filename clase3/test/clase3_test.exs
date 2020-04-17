defmodule Clase3Test do
  use ExUnit.Case
  doctest Clase3

  test "greets the world" do
    assert Clase3.hello() == :world
  end

  test "fizzbuzz cond" do
    assert FizzBuzz.fuzzle_cond(0, 0, 1) == "FizzBuzz"
    assert FizzBuzz.fuzzle_cond(0, 1, 1) == "Fizz"
    assert FizzBuzz.fuzzle_cond(1, 0, 1) == "Buzz"
    assert FizzBuzz.fuzzle_cond(1, 1, 0) == 0
  end

  test "fizzbuzz case" do
    assert FizzBuzz.fuzzle_case(0, 0, 1) == "FizzBuzz"
    assert FizzBuzz.fuzzle_case(0, 1, 1) == "Fizz"
    assert FizzBuzz.fuzzle_case(1, 0, 1) == "Buzz"
    assert FizzBuzz.fuzzle_case(1, 1, 0) == 0
  end

  test "handle response 1" do
    assert ApiResponse.handle_response_1({:ok, %{num: 1}}) == "Ok"
    assert ApiResponse.handle_response_1({:error, %{num: 2}}) == "Error"
    assert ApiResponse.handle_response_1({:what, %{num: 3}}) == :no_match_message_error
  end

  test "handle response 2" do
    assert ApiResponse.handle_response_2({:ok, %{num: 1}}) == "Ok"
    assert ApiResponse.handle_response_2({:error, %{num: 2}}) == "Error"
    assert ApiResponse.handle_response_2({:what, %{num: 3}}) == :no_match_message_error
  end

  test "handle response 3" do
    assert ApiResponse.handle_response_3({:ok, %{num: 1}}) == "Ok"
    assert ApiResponse.handle_response_3({:error, %{num: 2}}) == "Error"
    assert ApiResponse.handle_response_3({:what, %{num: 3}}) == :no_match_message_error
  end

  test "handle response 4" do
    assert ApiResponse.handle_response_4({:ok, %{num: 1}}) == "Ok"
    assert ApiResponse.handle_response_4({:error, %{num: 2}}) == "Error"
    assert ApiResponse.handle_response_4({:what, %{num: 3}}) == :no_match_message_error
  end
end
