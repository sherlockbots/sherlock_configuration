defmodule SherlockConfiguration.Repo.Migrations.AddConfigurationStructure do
  use Ecto.Migration

  def change do
    create table(:settings, primary_key: false) do
      add :id, :uuid, primary_key: true, default: fragment("uuid_generate_v4()")
      add :slack_id, :string
      add :message_filter, :boolean
      add :code_filter, :boolean
      add :pdf_filter, :boolean
      add :docs_filter, :boolean
      add :image_filter, :boolean
    end

    create table(:blacklist, primary_key: false) do
      add :id, :uuid, primary_key: true, default: fragment("uuid_generate_v4()")
      add :settings_id, references(:settings, type: :uuid)
      add :word, :string
    end

    create table(:account, primary_key: false) do
      add :id, :uuid, primary_key: true, default: fragment("uuid_generate_v4()")
      add :settings_id, references(:settings, type: :uuid)
      add :email, :string
    end
  end
end
