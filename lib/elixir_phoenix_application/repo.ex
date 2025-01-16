defmodule ElixirPhoenixApplication.Repo do
  use Ecto.Repo,
    otp_app: :elixir_phoenix_application,
    adapter: Ecto.Adapters.Postgres
end
