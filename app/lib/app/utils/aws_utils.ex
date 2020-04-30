defmodule App.AwsUtils do
  @moduledoc """
    This module uploads any file to s3 aws
  """

  @bucket "elixir-trainings"

  def upload_binary(file_binary, file_path) do
    ExAws.S3.put_object(@bucket, "test/#{file_path}", file_binary)
    |> ExAws.request!()
  end
end
