defmodule SherlockConfiguration.Settings.Account do
  use SherlockConfiguration.Schema

  import Ecto.Changeset
  alias SherlockConfiguration.Settings

  schema "accounts" do
    field :email, :string

    belongs_to(
      :settings,
      Settings,
      foreign_key: :settings_uuid,
      references: :uuid,
      primary_key: true
    )
  end

  def changeset(struct, params) do
    struct
    |> cast(params, [:email])
    |> validate_required([:email])
    |> foreign_key_constraint(:settings_uuid)
  end
end
