defmodule Demo.Track do
  use Ecto.Schema

  schema "tracks" do
    field :title, :string
    field :number, :integer

    belongs_to :album, Demo.Album
  end

  defmodule Changeset do
    import Ecto.Changeset

    def new(track, params) do
      track
      |> cast(params, [:title, :number, :album_id])
      |> validate_required([:title, :number, :album_id])
    end
  end
end
