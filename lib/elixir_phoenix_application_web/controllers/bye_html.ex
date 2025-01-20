defmodule ElixirPhoenixApplicationWeb.ByeHTML do
  use ElixirPhoenixApplicationWeb, :html

  def index(assigns) do
    ~H"""
    Hello!
    """
  end
end
