# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenFGA.Model.ReadChangesResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :changes,
    :continuation_token
  ]

  @type t :: %__MODULE__{
    :changes => [OpenFGA.Model.TupleChange.t],
    :continuation_token => String.t | nil
  }
end

defimpl Poison.Decoder, for: OpenFGA.Model.ReadChangesResponse do
  import OpenFGA.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:changes, :list, OpenFGA.Model.TupleChange, options)
  end
end

