use Mix.Config

# Configure your database
config :photo_uploader, PhotoUploader.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "photo_uploader_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :photo_uploader, :sql_sandbox, true
