defmodule SherlockConfiguration.Repo.Migrations.AddConfigurationStructure do
  use Ecto.Migration

  def change do
    create table(:settings, primary_key: false) do
      add :uuid, :uuid, primary_key: true
      add :slack_id, :string
      add :message_filter, :boolean
      add :code_filter, :boolean
      add :pdf_filter, :boolean
      add :docs_filter, :boolean
      add :image_filter, :boolean
    end

    create table(:blacklist, primary_key: false) do
      add :uuid, :uuid, primary_key: true
      add :settings_uuid, references(:settings, type: :uuid, column: :uuid)
      add :word, :string
    end

    create table(:accounts, primary_key: false) do
      add :uuid, :uuid, primary_key: true
      add :settings_uuid, references(:settings, type: :uuid, column: :uuid)
      add :email, :string
    end
  end
end
