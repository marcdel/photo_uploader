defmodule PhotoUploader.Application do
  @moduledoc """
  The PhotoUploader Application Service.

  The photo_uploader system business domain lives in this application.

  Exposes API to clients such as the `PhotoUploaderWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(PhotoUploader.Repo, []),
    ], strategy: :one_for_one, name: PhotoUploader.Supervisor)
  end
end
