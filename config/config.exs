# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ostip_pbx,
  ecto_repos: [OstipPbx.Repo]

# Configures the endpoint
config :ostip_pbx, OstipPbxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "P++jgNyY8gY7r+CsaNHMGRZikcIHgSIEreZ+uz+EsH0IsY0UPJzGISOVQo1aWd0f",
  render_errors: [view: OstipPbxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: OstipPbx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
