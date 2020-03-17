# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :sherlock_configuration,
  ecto_repos: [SherlockConfiguration.Repo]

# Configures the endpoint
config :sherlock_configuration, SherlockConfigurationWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YqNTxbZ5SPxD+NNBJcluA8c2u8CBSI025jzo2j+YL20TVbTpYV6y93Ga1CqPqUYk",
  render_errors: [view: SherlockConfigurationWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: SherlockConfiguration.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "PiAgfOHd"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
