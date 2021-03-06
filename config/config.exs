# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rent_api,
  ecto_repos: [RentApi.Repo]

# Configures the endpoint
config :rent_api, RentApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KovR1BIOPf61q1IF21gPppXCsT8vB2Tkv2AP5ikPyDjfWLpfuXFvU3lcSK9ayGjL",
  render_errors: [view: RentApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: RentApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
