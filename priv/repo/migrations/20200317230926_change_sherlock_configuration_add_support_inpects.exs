defmodule SherlockConfiguration.Repo.Migrations.ChangeSherlockConfigurationAddSupportInpects do
  use Ecto.Migration

  def change do
    alter table(:sherlock_configuration) do
      remove :file_filter
      add :code_filter, :boolean
      add :pdf_filter, :boolean
      add :docs_filter, :boolean
      add :image_filter, :boolean
    end
  end
end
