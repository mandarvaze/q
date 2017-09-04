defmodule Q do
  @moduledoc """
  Quick and dirty debugging output for Elixir programmers.

  Inspired from Similar project for python <https://github.com/zestyping/q>

  The output is not mixed up with other output on the console, instead it goes
  to `/tmp/q`

  If `TMPDIR` or `TEMP` environment variables are defined, they are used first
  (in that order)
  else `/tmp`is used for writing `q` output file.

  Include `require Q` in the module

  """

  @doc """
  `print_msg` is internal/private function that just writes to the `q` file.

  since `Q.q` is a macro, I couldn't define `print_msg` as `defp`.

  if you want the module name in the `q` file output, use `Q.q` instead, which is the recommended option anyway.
  """
  def print_msg(msg) do
    tmpdir = System.tmp_dir()
    {:ok, file} = File.open '#{tmpdir}/q', [:append]
    IO.write file, "#{msg}\n"
    File.close file
  end

  @doc """

  Use `Q.q` instead of `IO.puts`

  """
  defmacro q(msg) do
    quote do
      x = "#{inspect __ENV__.module} : #{inspect unquote(msg), pretty: true}\n"
      Q.print_msg(x)
    end
  end
end
