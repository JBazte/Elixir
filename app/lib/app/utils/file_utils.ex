defmodule App.FileUtils do
  @moduledoc """
  Saves and locates new image files.
  """
  require Logger

  @root_dir File.cwd!
  @folder "#{@root_dir}/temp"

  def upload_binary(binary, path) do
    case File.write("#{@folder}/#{path}", binary) do
      :ok ->
        Logger.debug("'#{path}' saved in '#{@folder}'!")
        :ok

      {:error, res} ->
        Logger.error(res)
        :error
    end
  end
end
