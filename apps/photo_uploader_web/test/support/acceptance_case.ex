defmodule PhotoUploaderWeb.AcceptanceCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.DSL

      alias PhotoUploader.Repo
      import Ecto
      import Ecto.Changeset
      import Ecto.Query

      import PhotoUploaderWeb.Router.Helpers
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(PhotoUploader.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(PhotoUploader.Repo, {:shared, self()})
    end

    Application.put_env(:wallaby, :base_url, PhotoUploaderWeb.Endpoint.url())

    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(PhotoUploader.Repo, self())
    {:ok, session} = Wallaby.start_session(metadata: metadata)
    {:ok, session: session}
  end
end
