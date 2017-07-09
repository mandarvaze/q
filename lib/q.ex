defmodule Q do
  @moduledoc """
  Documentation for Q.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Q.hello
      :world

  """
  def q(msg) do
    {:ok, file} = File.open '/tmp/q', [:write]
    IO.write file, "#{msg}\n"
    File.close file
  end
end
