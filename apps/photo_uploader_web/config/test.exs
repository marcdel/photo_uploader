use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :photo_uploader_web, PhotoUploaderWeb.Endpoint,
  http: [port: 4001],
  server: true

config :wallaby,
  max_wait_time: 3000,
  screenshot_dir: "../../screenshots",
  screenshot_on_failure: true,
  chrome: [
    headless: true
  ]
