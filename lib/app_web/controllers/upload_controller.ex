defmodule AppWeb.UploadController do
  use AppWeb, :controller
  alias App.Buffer

  def image_upload(conn, %{"device_id" => id, "image" => image}) do
    %Plug.Upload{path: file_path} = image
    {:ok, file} = File.read(file_path)
    Buffer.push({id, file})

    conn
    |> send_resp(:created, "")
  end
end
