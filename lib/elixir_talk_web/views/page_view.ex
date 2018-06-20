defmodule ElixirTalkWeb.PageView do
  use ElixirTalkWeb, :view

  def current_show_id do

    "447653883"

  end

  def id(%{id: id}) do
    id
    |> String.split("/")
    |> List.last()
  end

  def description(%{description: description}) do
    description
    |> String.replace("\n", "</p><p>")
    |> raw()
  end

  def created(%{updated: date}) do
    Timex.format!(date, "{Mfull} {D}, {YYYY}")
  end

end
