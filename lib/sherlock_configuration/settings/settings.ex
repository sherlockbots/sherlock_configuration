defmodule SherlockConfiguration.Settings do
  use SherlockConfiguration.Schema
  import Ecto.Changeset

  alias SherlockConfiguration.Settings
  alias SherlockConfiguration.Settings.Account
  alias SherlockConfiguration.Settings.Blacklist
  alias SherlockConfiguration.Repo

  schema "settings" do
    field :slack_id, :string
    field :message_filter, :boolean
    field :code_filter, :boolean
    field :pdf_filter, :boolean
    field :docs_filter, :boolean
    field :image_filter, :boolean
    has_many(:accounts,  Account)
    has_many(:blacklist,  Blacklist)
  end

  @doc """
  changeset request to Settings
  ## Example
      iex> request = %{ "slack_id" => "23412431", "code_filter"=> true, "pdf_filter"=> true, "docs_filter"=> true, "image_filter"=> true, "message_filter"=> true, "woman_protect"=> true, "accounts" => [%{"email"=> "test@email.com"}], "blacklist"=> [%{"word"=> "leco"}] }
      iex> SherlockConfiguration.Settings.changeset(%SherlockConfiguration.Settings{}, request)
      #Ecto.Changeset<action: nil, changes: %{ accounts: [ #Ecto.Changeset< action: :insert, changes: %{email: "test@email.com"}, errors: [], data: #SherlockConfiguration.Settings.Account<>, valid?: true > ], blacklist: [ #Ecto.Changeset< action: :insert, changes: %{word: "leco"}, errors: [], data: #SherlockConfiguration.Settings.Blacklist<>, valid?: true > ], code_filter: true, docs_filter: true, image_filter: true, message_filter: true, pdf_filter: true, slack_id: "23412431" }, errors: [], data: #SherlockConfiguration.Settings<>, valid?: true >
  """

  def create(settings) do
    %Settings{}
    |> changeset(settings)
    |> Repo.insert
  end

  def get(id) do
    Repo.get(Settings, id)
  end

  def changeset(struct, params) do
    struct
    |> cast(params, [
      :slack_id,
      :message_filter,
      :code_filter,
      :pdf_filter,
      :docs_filter,
      :image_filter
    ])
    |> cast_assoc(:accounts)
    |> cast_assoc(:blacklist)
    |> validate_required([:slack_id])
  end
end
