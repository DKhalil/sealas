# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :sealas_sso,
  namespace: SealasSso,
  ecto_repos: [SealasSso.Repo]

# Configures the endpoint
config :sealas_sso, SealasSso.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1W83oJ9rFUFj7FEP/5tMIn5/ZGkcYbqGNY+IZYRHv8rSVG/RpgooWfoRnGebIwQy",
  render_errors: [view: SealasSso.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SealasSso.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :sealas_sso, :generators,
  context_app: false

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
