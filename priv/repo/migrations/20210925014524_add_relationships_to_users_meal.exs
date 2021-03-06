defmodule Exmeal.Repo.Migrations.AddRelationshipsToUsersMeal do
  use Ecto.Migration

  def change do
    alter table(:meals) do
      add :user_id, references(:users, type: :binary_id), null: false
    end
  end
end
