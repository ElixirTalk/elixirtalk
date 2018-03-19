defmodule ElixirTalkWeb.LayoutView do
  use ElixirTalkWeb, :view

  def this_year do
    {{year, _m, _d}, _time} = :calendar.local_time()
    year
  end
end
