defmodule ElixirTalkWeb.PageView do
  use ElixirTalkWeb, :view

  def id(%{id: id}) do
    id
    |> String.split("/")
    |> List.last()
  end

  def description(%{description: description}) do
    description
    |> replace_links
    |> Earmark.as_html!
    |> raw()
  end

  def created(%{updated: date}) do
    Timex.format!(date, "{Mfull} {D}, {YYYY}")
  end

  def replace_links(text) do
    Regex.replace(~r/\b((https?|ftp):\/\/[^\s]+)\b/, text, "[\\1](\\1)")
  end

end
