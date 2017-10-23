defmodule RsvpWeb.EventView do
  use RsvpWeb.Web, :view

  def format_date(date) do
    {{year, month, day}, _} = Ecto.DateTime.to_erl(date)
    "#{month}/#{day}/#{year}"
  end
end