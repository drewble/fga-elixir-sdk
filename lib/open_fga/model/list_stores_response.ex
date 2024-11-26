# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenFGA.Model.ListStoresResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :stores,
    :continuation_token
  ]

  @type t :: %__MODULE__{
    :stores => [OpenFGA.Model.Store.t],
    :continuation_token => String.t
  }
end

defimpl Poison.Decoder, for: OpenFGA.Model.ListStoresResponse do
  import OpenFGA.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:stores, :list, OpenFGA.Model.Store, options)
  end
end

