defmodule ElixirPhoenixApplication.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      ElixirPhoenixApplicationWeb.Telemetry,
      ElixirPhoenixApplication.Repo,
      {DNSCluster, query: Application.get_env(:elixir_phoenix_application, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: ElixirPhoenixApplication.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: ElixirPhoenixApplication.Finch},
      # Start a worker by calling: ElixirPhoenixApplication.Worker.start_link(arg)
      # {ElixirPhoenixApplication.Worker, arg},
      # Start to serve requests, typically the last entry
      ElixirPhoenixApplicationWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ElixirPhoenixApplication.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ElixirPhoenixApplicationWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
