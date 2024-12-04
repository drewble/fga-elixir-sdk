# NOTE: This file is auto generated by OpenAPI Generator 7.10.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenFGA.Model.ExpandRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :tuple_key,
    :authorization_model_id,
    :consistency,
    :contextual_tuples
  ]

  @type t :: %__MODULE__{
    :tuple_key => OpenFGA.Model.ExpandRequestTupleKey.t,
    :authorization_model_id => String.t | nil,
    :consistency => OpenFGA.Model.ConsistencyPreference.t | nil,
    :contextual_tuples => OpenFGA.Model.ContextualTupleKeys.t | nil
  }

  alias OpenFGA.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:tuple_key, :struct, OpenFGA.Model.ExpandRequestTupleKey)
     |> Deserializer.deserialize(:consistency, :struct, OpenFGA.Model.ConsistencyPreference)
     |> Deserializer.deserialize(:contextual_tuples, :struct, OpenFGA.Model.ContextualTupleKeys)
  end
end

