defmodule SherlockConfiguration.Settings.Blacklist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "blacklist" do
    field :word, :string
  end

  def changeset(struct, params) do
    struct
    |> cast(params, [:word])
    |> validate_required([:word])
  end
end
