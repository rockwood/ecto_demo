defmodule Demo.Album do
  use Ecto.Schema

  schema "albums" do
    field :title, :string
    field :artist, :string
    field :rating, :integer
    field :released_on, :date
  end
end
