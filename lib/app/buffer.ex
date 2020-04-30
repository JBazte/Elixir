defmodule App.Buffer do
  use GenServer

  alias App.FileUtils

  # This is the client

  def start_link(default) when is_list(default) do
    GenServer.start_link(__MODULE__, default, name: __MODULE__)
  end

  def push(element) do
    GenServer.cast(__MODULE__, {:push, element})
  end

  def pop() do
    GenServer.call(__MODULE__, :pop)
  end

  # Server (callbacks)

  @impl true
  def init(stack) do
    check()
    {:ok, stack}
  end

  @impl true
  def handle_call(:pop, _from, [head | tail]) do
    {:reply, head, tail}
  end

  @impl true
  def handle_cast({:push, element}, state) do
    {:noreply, [element | state]}
  end

  @impl true
  def handle_info(:check, state) do
    upload_images(state)
    check()
    {:noreply, []}
  end

  defp check() do
    Process.send_after(self(), :check, 1000)
  end

  defp upload_images([]), do: :ok

  defp upload_images([{id, image} | tail]) do
    %DateTime{year: year, month: month, day: day, hour: hour, minute: minute, second: second} =
      DateTime.utc_now()

    FileUtils.upload_binary(
      image,
      "device_#{id}_#{year}_#{month}_#{day}_#{hour}_#{minute}_#{second}.jpg"
    )

    :timer.sleep(2000)
    upload_images(tail)
  end
end
