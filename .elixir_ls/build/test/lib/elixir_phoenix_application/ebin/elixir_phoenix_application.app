{application,elixir_phoenix_application,
    [{modules,
         ['Elixir.ElixirPhoenixApplication',
          'Elixir.ElixirPhoenixApplication.Application',
          'Elixir.ElixirPhoenixApplication.DataCase',
          'Elixir.ElixirPhoenixApplication.Mailer',
          'Elixir.ElixirPhoenixApplication.Repo',
          'Elixir.ElixirPhoenixApplicationWeb',
          'Elixir.ElixirPhoenixApplicationWeb.ConnCase',
          'Elixir.ElixirPhoenixApplicationWeb.CoreComponents',
          'Elixir.ElixirPhoenixApplicationWeb.Endpoint',
          'Elixir.ElixirPhoenixApplicationWeb.ErrorHTML',
          'Elixir.ElixirPhoenixApplicationWeb.ErrorJSON',
          'Elixir.ElixirPhoenixApplicationWeb.Gettext',
          'Elixir.ElixirPhoenixApplicationWeb.Layouts',
          'Elixir.ElixirPhoenixApplicationWeb.PageController',
          'Elixir.ElixirPhoenixApplicationWeb.PageHTML',
          'Elixir.ElixirPhoenixApplicationWeb.Router',
          'Elixir.ElixirPhoenixApplicationWeb.Telemetry']},
     {compile_env,
         [{elixir_phoenix_application,
              ['Elixir.ElixirPhoenixApplicationWeb.Gettext'],
              error},
          {elixir_phoenix_application,[dev_routes],error}]},
     {optional_applications,[]},
     {applications,
         [kernel,stdlib,elixir,logger,runtime_tools,phoenix,phoenix_ecto,
          ecto_sql,postgrex,phoenix_html,phoenix_live_view,floki,
          phoenix_live_dashboard,swoosh,finch,telemetry_metrics,
          telemetry_poller,gettext,jason,dns_cluster,bandit]},
     {description,"elixir_phoenix_application"},
     {registered,[]},
     {vsn,"0.1.0"},
     {mod,{'Elixir.ElixirPhoenixApplication.Application',[]}}]}.