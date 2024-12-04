# OpenFGA

A high performance and flexible authorization/permission engine built for developers and inspired by Google Zanzibar.

## Building

To install the required dependencies and to build the elixir project, run:

```console
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex][], the package can be installed by adding `open_fga` to
your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:open_fga, "~> 0.0.1"}]
end
```

Documentation can be generated with [ExDoc][] and published on [HexDocs][]. Once published, the docs can be found at
[https://hexdocs.pm/open_fga][docs].

## Configuration

This SDK uses a `GenServer` to fetch an access token on application start up and manage a timed refresh (currently defaulting to 23 hours, based on the default auth0 token lifetime of 24 hours). Add the TokenManager to your application's supervision tree.

```elixir
def start(_type, _args) do
    children = [
      OpenFGA.OAuth2.TokenManager
    ]

    opts = [strategy: :one_for_one, name: MyApp.Supervisor]
    Supervisor.start_link(children, opts)
  end
```

You can override the URL of your server (e.g. if you have a separate development and production server in your
configuration files) by setting a `:base_url` in the config. Additional values must be set for the library to work properly with FGA

```elixir
config :open_fga,
  base_url: "https://api.us1.fga.dev/", #default
  token_url: "https://auth.fga.dev/oauth/token", #default
  grant_type: "client_credentials", #default
  client_id: "YOUR CLIENT ID",
  client_secret: "YOUR CLIENT SECRET",
  audience: "https://api.us1.fga.dev/" #default

```

Additional config

Multiple clients for the same API with different URLs can be created passing different `base_url`s when calling
`OpenFGA.Connection.new/1`:

```elixir
client = OpenFGA.Connection.new(base_url: "http://localhost")
```

The HTTP Client is Tesla, and configuration can be set for the client returned by `OpenFGA.Connection.new()` by setting config for the module. In addition to `:adapter`, Tesla middleware can be added, and the JSON library changed by using the `:middleware` and `:json` keys.

```elixir
# Add HTTP adapter to your mix.exs
{:hackney, "~> 1.20"}

# config/config.exs
config :tesla, OpenFGA.Connection, adapter: Tesla.Adapter.Hackney
```

## Usage

Compose a request body with a Tuple Check

```elixir
tuple_key = %OpenFGA.Model.CheckRequestTupleKey{
  user: "user:john_smith",
  relation: "viewer",
  object: "doc:roadmap"
}

check_request = %OpenFGA.Model.CheckRequest{tuple_key: tuple_key}
```

Get a client and make the check request.

```elixir
client = OpenFGA.Connection.new()

OpenFGA.Api.OpenFga.check(client, "YOUR STORE ID", check_request)
# {:ok, %OpenFGA.Model.CheckResponse{allowed: true, resolution: ""}}
```

[exdoc]: https://github.com/elixir-lang/ex_doc
[hexdocs]: https://hexdocs.pm
[available in hex]: https://hex.pm/docs/publish
[docs]: https://hexdocs.pm/open_fga
