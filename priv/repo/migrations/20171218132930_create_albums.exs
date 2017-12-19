defmodule Demo.Repo.Migrations.CreateAlbums do
  use Ecto.Migration

  def change do
    create table(:albums) do
      add :artist, :string, null: false
      add :title, :string, null: false
      add :rating, :integer, null: false
      add :released_on, :date, null: false
    end
  end
end
