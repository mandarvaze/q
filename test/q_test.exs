defmodule QTest do
  use ExUnit.Case
#  doctest Q

  setup_all do
    case File.exists? '/tmp/q' do
      true -> File.rm '/tmp/q'
      # There must be better way to just ignore if exists? returns false
      false -> IO.puts "/tmp/q does not exist."
    end
  end

  def assertInQLog(msg) do
    assert File.exists?('/tmp/q') == true
    {:ok, body} = File.read('/tmp/q')
    assert String.contains?(body, msg) == true
  end

  test "msg in q log" do
    msg = "Test Message"
    Q.q msg
    assertInQLog msg
  end
end
