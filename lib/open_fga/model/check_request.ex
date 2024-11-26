# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenFGA.Model.CheckRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :tuple_key,
    :contextual_tuples,
    :authorization_model_id,
    :trace,
    :context,
    :consistency
  ]

  @type t :: %__MODULE__{
    :tuple_key => OpenFGA.Model.CheckRequestTupleKey.t,
    :contextual_tuples => OpenFGA.Model.ContextualTupleKeys.t | nil,
    :authorization_model_id => String.t | nil,
    :trace => boolean() | nil,
    :context => map() | nil,
    :consistency => OpenFGA.Model.ConsistencyPreference.t | nil
  }
end

defimpl Poison.Decoder, for: OpenFGA.Model.CheckRequest do
  import OpenFGA.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:tuple_key, :struct, OpenFGA.Model.CheckRequestTupleKey, options)
    |> deserialize(:contextual_tuples, :struct, OpenFGA.Model.ContextualTupleKeys, options)
    |> deserialize(:consistency, :struct, OpenFGA.Model.ConsistencyPreference, options)
  end
end

