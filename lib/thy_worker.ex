defmodule ThyWorker do
  def start_link do
    spawn(fn -> loop() end)
  end

  @spec loop() :: :ok
  def loop do
    receive do
      :stop ->
        :ok

      msg ->
        IO.inspect(msg)
        loop()
    end
  end
end
