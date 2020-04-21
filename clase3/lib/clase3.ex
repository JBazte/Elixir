defmodule Clase3 do
  @moduledoc """
  Documentation for `Clase3`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Clase3.hello()
      :world

  """
  def hello do
    :world
  end
end

defmodule FizzBuzz do
  @moduledoc """
  Documentation for `FizzBuzz`.
  """

  @doc """
  fuzzle_cond

  ## Examples

      iex> FizzBuzz.fuzzle_cond(0,0,1)
      "FizzBuzz"

      iex> FizzBuzz.fuzzle_cond(0,1,1)
      "Fizz"

      iex> FizzBuzz.fuzzle_cond(1,0,1)
      "Buzz"

      iex> FizzBuzz.fuzzle_cond(1,1,0)
      0

  """

  def fuzzle_cond(a, b, c) do
    cond do
      a == 0 and b == 0 -> "FizzBuzz"
      a == 0 -> "Fizz"
      b == 0 -> "Buzz"
      true -> c
    end
  end

  @doc """
  fuzzle_case

  ## Examples

      iex> FizzBuzz.fuzzle_case(0,0,1)
      "FizzBuzz"

      iex> FizzBuzz.fuzzle_case(0,1,1)
      "Fizz"

      iex> FizzBuzz.fuzzle_case(1,0,1)
      "Buzz"

      iex> FizzBuzz.fuzzle_case(1,1,0)
      0

  """

  def fuzzle_case(a, b, c) do
    case {a, b, c} do
      {0, 0, _} -> "FizzBuzz"
      {0, _, _} -> "Fizz"
      {_, 0, _} -> "Buzz"
      _ -> c
    end
  end
end

defmodule ApiResponse do
  @moduledoc """
  Documentation for `ApiResponse`.
  """

  @doc """
  handle_response_1

  ## Examples

      iex> ApiResponse.handle_response_1({:ok, %{num: 1}})
      "Ok"

      iex> ApiResponse.handle_response_1({:error, %{num: 2}})
      "Error"

      iex> ApiResponse.handle_response_1({:what, %{num: 3}})
      :no_match_message_error

  """
  def handle_response_1({status, _response}) do
    if status == :ok do
      "Ok"
    else
      if status == :error do
        "Error"
      else
        if status == :what do
          :no_match_message_error
        end
      end
    end
  end

  @doc """
  handle_response_2

  ## Examples

      iex> ApiResponse.handle_response_2({:ok, %{num: 1}})
      "Ok"

      iex> ApiResponse.handle_response_2({:error, %{num: 2}})
      "Error"

      iex> ApiResponse.handle_response_2({:what, %{num: 3}})
      :no_match_message_error

  """

  def handle_response_2({status, _response}) do
    cond do
      status == :ok -> "Ok"
      status == :error -> "Error"
      status == :what -> :no_match_message_error
    end
  end

  @doc """
  handle_response_3

  ## Examples

      iex> ApiResponse.handle_response_3({:ok, %{num: 1}})
      "Ok"

      iex> ApiResponse.handle_response_3({:error, %{num: 2}})
      "Error"

      iex> ApiResponse.handle_response_3({:what, %{num: 3}})
      :no_match_message_error

  """

  def handle_response_3({status, _response}) do
    case {status} do
      {:ok} -> "Ok"
      {:error} -> "Error"
      {:what} -> :no_match_message_error
    end
  end

  @doc """
  handle_response_4

  ## Examples

      iex> ApiResponse.handle_response_4({:ok, %{num: 1}})
      "Ok"

      iex> ApiResponse.handle_response_4({:error, %{num: 2}})
      "Error"

      iex> ApiResponse.handle_response_4({:what, %{num: 3}})
      :no_match_message_error

  """

  def handle_response_4({status, _response}) when status == :ok do
    "Ok"
  end

  def handle_response_4({status, _response}) when status == :error do
    "Error"
  end

  def handle_response_4({status, _response}) when status == :what do
    :no_match_message_error
  end
end
