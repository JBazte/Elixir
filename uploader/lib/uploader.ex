defmodule Uploader do
  @moduledoc """
    This module upload any file to s3 aws
  """

  @doc """
  Insert the file you want to upload

  ## Examples
      iex> Uploader.main("README.md")
      File uploaded!

  """

  def main(file_path) do
    get_file(file_path)
    |> upload_to_s3(file_path)
  end

  @doc """
  get_file() reads the file and does another in binary
  """

  defp get_file(file_path) do
    case File.read(file_path) do
      {:ok, binary} -> binary
      {:error, _reason} -> "File not found!"
    end
  end

  @doc """
  upload_to_s3() gets the binary file and uploads it to AWS
  """

  defp upload_to_s3(file_binary, file_path) do
    ExAws.S3.put_object("elixir-trainings", "joaquin/#{file_path}", file_binary)
    |> ExAws.request!()

    IO.puts("File uploaded!")
  end
end
