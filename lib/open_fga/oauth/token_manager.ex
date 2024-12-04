defmodule OpenFGA.OAuth2.TokenManager do
  use GenServer

  @type access_token :: String.t()

  # 23 hours in milliseconds
  @refresh_interval 23 * 60 * 60 * 1000

  @spec start_link(any()) :: {:ok, pid()} | {:error, any()}
  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  @spec init(any()) :: {:ok, access_token()}
  def init(:ok) do
    token = fetch_new_token()
    schedule_refresh()
    {:ok, token}
  end

  @spec handle_info(any(), access_token()) :: {:noreply, access_token()}
  def handle_info(:refresh_token, _state) do
    new_token = fetch_new_token()
    schedule_refresh()
    {:noreply, new_token}
  end

  @spec handle_call(any(), any(), access_token()) ::
          {:reply, access_token(), access_token()}
  def handle_call(:get_token, _from, state) do
    {:reply, state, state}
  end

  @spec fetch_new_token() :: access_token() | nil
  defp fetch_new_token do
    case do_get_token() do
      {:ok, token} ->
        token

      {:error, _reason} ->
        nil
    end
  end

  defp do_get_token() do
    token_url = Application.get_env(:open_fga, :token_url, "https://auth.fga.dev/oauth/token")

    token_request_body = %{
      grant_type: Application.get_env(:open_fga, :grant_type, "client_credentials"),
      client_id: Application.get_env(:open_fga, :client_id),
      client_secret: Application.get_env(:open_fga, :client_secret),
      audience: Application.get_env(:open_fga, :audience, "https://api.us1.fga.dev/")
    }

    {:ok, %{body: token_response}} =
      OpenFGA.Connection.new()
      |> Tesla.post(token_url, token_request_body)

    {:ok, %{"access_token" => access_token}} =
      token_response
      |> Jason.decode()

    existing_config = Application.get_env(:tesla, OpenFGA.Connection, [])

    Application.put_env(
      :tesla,
      OpenFGA.Connection,
      [middleware: [{Tesla.Middleware.BearerAuth, token: access_token}]]
      |> Keyword.merge(existing_config, fn :middleware, v1, v2 -> v1 ++ v2 end)
    )

    {:ok, access_token}
  end

  @spec schedule_refresh() :: :ok
  defp schedule_refresh do
    Process.send_after(self(), :refresh_token, @refresh_interval)
  end

  #
  # API
  #
  @spec get_token() :: access_token()
  def get_token do
    GenServer.call(__MODULE__, :get_token)
  end
end
