defmodule Rsvp.Repo.Migrations.RemoveEventDescription do
  use Ecto.Migration

  def change do
    alter table(:events) do
      remove :description
    end
  end
end
