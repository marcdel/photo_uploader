defmodule PhotoUploaderWeb.PageController do
  use PhotoUploaderWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
