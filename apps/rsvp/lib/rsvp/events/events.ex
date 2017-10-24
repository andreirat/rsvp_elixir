defmodule Rsvp.Events do
  @moduledoc false
  use Ecto.Schema
  import Ecto.Changeset

  schema "events" do
    field :title, :string
    field :location,  :string
    field :description,  :string
    field :date,  :naive_datetime
    field :quantity_available, :integer, default: 25

    timestamps()
  end

  @fields ~w(title location date description)a
  @required ~w(date title location)a

  def changeset(data, params \\ %{}) do
    data
    |> cast(params, @fields)
    |> validate_required(@required)
  end
end