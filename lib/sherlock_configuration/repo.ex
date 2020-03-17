defmodule SherlockConfiguration.Repo do
  use Ecto.Repo,
    otp_app: :sherlock_configuration,
    adapter: Ecto.Adapters.Postgres
end
