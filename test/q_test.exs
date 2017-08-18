defmodule QTest do
  use ExUnit.Case
#  doctest Q

  @q_file System.tmp_dir() <> "/q"

  setup_all do
    case File.exists? @q_file do
      true -> File.rm @q_file
      # There must be better way to just ignore if exists? returns false
      false -> IO.puts "#{@q_file} does not exist."
    end
  end

  def assertInQLog(msg) do
    assert File.exists?(@q_file) == true
    {:ok, body} = File.read(@q_file)
    assert String.contains?(body, msg) == true
  end

  test "msg in q log" do
    require Q
    msg = "Test Message"
    Q.q msg
    assertInQLog msg
  end
end
