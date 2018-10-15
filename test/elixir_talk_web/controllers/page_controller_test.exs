defmodule ElixirTalkWeb.PageControllerTest do
  use ElixirTalkWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "The ElixirTalk Podcast"
  end
end
