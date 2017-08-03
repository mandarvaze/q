defmodule Q do
  @moduledoc """
  Quick and dirty debugging output for Elixir programmers
  """

  @doc """

  Use `Q.q` instead of `IO.puts`
  it is shorter to type and the output is not mixed up with other output on the console, instead it goes to `/tmp/q`

  """
  def q(msg) do
    {:ok, file} = File.open '/tmp/q', [:write]
    IO.write file, "#{msg}\n"
    File.close file
  end
end
