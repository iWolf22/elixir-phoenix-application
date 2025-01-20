defmodule ElixirPhoenixApplicationWeb.HelloController do
  use ElixirPhoenixApplicationWeb, :controller

  # renders the HTML template
  # conn -> struct containing a ton of data about the request
  # params -> request parameters
  def index(conn, _params) do
    render(conn, :index)
  end

  def show(conn, %{"messenger" => messenger} = _params) do
    render(conn, :show, messenger: messenger)
  end
end