defmodule SherlockConfiguration.Settings.Blacklist do
  use SherlockConfiguration.Schema
  import Ecto.Changeset
  alias SherlockConfiguration.Settings

  schema "blacklist" do
    field :word, :string
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
    |> cast(params, [:word])
    |> validate_required([:word])
    |> foreign_key_constraint(:settings_uuid)
  end
end
