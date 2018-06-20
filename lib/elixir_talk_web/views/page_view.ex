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
    |> wrap_in_paragraphs()
    |> raw()
  end

  defp wrap_in_paragraphs(incomplete_html) do
    "<p>#{incomplete_html}</p>"
  end

end
