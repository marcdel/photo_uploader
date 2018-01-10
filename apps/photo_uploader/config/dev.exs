use Mix.Config

# Configure your database
config :photo_uploader, PhotoUploader.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "photo_uploader_dev",
  hostname: "localhost",
  pool_size: 10
