defmodule SherlockConfiguration.Repo.Migrations.AddConfigurationStructure do
  use Ecto.Migration

  def change do
    create table(:sherlock_configuration, primary_key: false) do
      add :id, :uuid, primary_key: true, default: fragment("uuid_generate_v4()")
      add :slack_id, :string
      add :message_filter, :boolean
      add :file_filter, :boolean
    end

    create table(:blacklist, primary_key: false) do
      add :id, :uuid, primary_key: true, default: fragment("uuid_generate_v4()")
      add :sherlock_configuration_id, references(:sherlock_configuration, type: :uuid)
      add :word, :string
    end

    create table(:account_administrators, primary_key: false) do
      add :id, :uuid, primary_key: true, default: fragment("uuid_generate_v4()")
      add :sherlock_configuration_id, references(:sherlock_configuration, type: :uuid)
      add :email, :string
    end
  end
end
