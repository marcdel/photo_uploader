defmodule PhotoUploaderWeb.HomePageTest do
  use PhotoUploaderWeb.AcceptanceCase, async: true

  import Wallaby.Query

  test "can upload a photo", %{session: session} do
    photo_field = file_field("Photo")

    session
    |> visit("/")
    |> attach_file(photo_field, path: "test/support/photo.png")
    |> take_screenshot()

    assert find(session, photo_field) |> has_value?("test/support/photo.png")
  end

  test "can upload a photo 2", %{session: session} do
    session
    |> visit("/")
    |> attach_file(file_field("Photo"), path: "test/support/photo.png")
    |> take_screenshot()

    assert find(session, css("#user_photo")) |> has_value?("test/support/photo.png")
  end
end
