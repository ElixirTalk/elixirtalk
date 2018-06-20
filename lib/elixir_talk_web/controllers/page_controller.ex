defmodule ElixirTalkWeb.PageController do
  use ElixirTalkWeb, :controller

  def index(conn, _params) do
    {:ok, %{body: body}} = HTTPoison.get("http://feeds.soundcloud.com/users/soundcloud:users:334579745/sounds.rss")
    {:ok, parsed} = ElixirFeedParser.parse(body)
    latest_track = List.first(parsed.entries)

    render conn, "index.html", %{track: latest_track}
  end
end
