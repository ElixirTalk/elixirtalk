use Mix.Config

config :elixir_talk, ElixirTalkWeb.Endpoint,
  url: [host: "elixirtalk.com"],
  cache_static_manifest: "priv/static/cache_manifest.json"

# Do not print debug messages in production
config :logger, level: :info

config :phoenix, :serve_endpoints, true

import_config "prod.secret.exs"
