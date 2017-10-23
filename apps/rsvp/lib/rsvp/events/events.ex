defmodule Rsvp.Events do
  @moduledoc false
  use Ecto.Schema
  import Ecto.Changeset

  schema "events" do
    field :title, :string
    field :location,  :string
    field :date,  :naive_datetime

    timestamps()
  end

  @fields ~w(title location date)a
  @required ~w(date)a

  def changeset(data, params \\ %{}) do
    data
    |> cast(params, @fields)
    |> validate_required(@required)
  end
end