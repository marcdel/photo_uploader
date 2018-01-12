defmodule PhotoUploaderWeb.HomePageTest do
  use PhotoUploaderWeb.AcceptanceCase, async: true

  import Wallaby.Query

  test "can upload a photo", %{session: session} do
    photo_field = file_field("Photo")

    session
    |> visit("/")
    |> attach_file(photo_field, path: "test/support/photo.png")
    |> take_screenshot()

    value = find(session, photo_field) |> Wallaby.Element.value()
    assert value == "test/support/photo.png"
  end
end
