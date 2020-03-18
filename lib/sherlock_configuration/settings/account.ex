defmodule SherlockConfiguration.Settings.Account do
  use Ecto.Schema
  import Ecto.Changeset

  schema "account" do
    field :email, :string
  end

  def changeset(struct, params) do
    struct
    |> cast(params, [:email])
    |> validate_required([:email])
  end
end
