# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :photo_uploader_web,
  namespace: PhotoUploaderWeb,
  ecto_repos: [PhotoUploader.Repo]

# Configures the endpoint
config :photo_uploader_web, PhotoUploaderWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DmB9qP3V4aZ2MIM7omDcBYa4cWiqxrQh6EugjeqJgMuFGGoF3IMz8To6fV8y+0jK",
  render_errors: [view: PhotoUploaderWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhotoUploaderWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :photo_uploader_web, :generators,
  context_app: :photo_uploader

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
