defmodule Demo.Album do
  use Ecto.Schema

  schema "albums" do
    field :title, :string
    field :artist, :string
    field :rating, :integer
    field :released_on, :date
  end

  defmodule Changeset do
    import Ecto.Changeset

    def new(album, params) do
      album
      |> cast(params, [:title, :artist, :rating, :released_on])
      |> validate_required([:title, :artist, :rating, :released_on])
      |> validate_number(:rating, greater_than: 0, less_than: 6)
    end
  end
end
