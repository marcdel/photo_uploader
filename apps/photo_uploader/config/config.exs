use Mix.Config

config :photo_uploader, ecto_repos: [PhotoUploader.Repo]

import_config "#{Mix.env}.exs"
