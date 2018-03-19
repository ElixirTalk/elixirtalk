# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :elixir_talk, ElixirTalkWeb.Endpoint,
  url: [host: "localhost"],
  http: [port: 4086],
  secret_key_base: "AdyxoP0ugW/1I8GxCKfuCI1BJ/MzUra6/KyeYhCUkOSYhdso/QFANgmcDaWzSDZH",
  render_errors: [view: ElixirTalkWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirTalk.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
