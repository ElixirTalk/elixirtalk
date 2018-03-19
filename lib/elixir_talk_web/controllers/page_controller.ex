defmodule ElixirTalkWeb.PageController do
  use ElixirTalkWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
