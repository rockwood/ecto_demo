defmodule Demo.Repo.Migrations.CreateTracks do
  use Ecto.Migration

  def change do
    create table(:tracks) do
      add :album_id, references(:albums), null: false
      add :title, :string, null: false
      add :number, :integer, null: false
    end
  end
end
