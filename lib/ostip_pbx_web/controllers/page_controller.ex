defmodule OstipPbxWeb.PageController do
  use OstipPbxWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
