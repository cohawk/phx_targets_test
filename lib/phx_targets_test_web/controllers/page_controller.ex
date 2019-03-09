defmodule PhxTargetsTestWeb.PageController do
  use PhxTargetsTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
