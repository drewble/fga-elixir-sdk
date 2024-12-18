# NOTE: This file is auto generated by OpenAPI Generator 7.10.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenFGA.Model.BatchCheckResponse do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :result
  ]

  @type t :: %__MODULE__{
    :result => %{optional(String.t) => OpenFGA.Model.BatchCheckSingleResult.t} | nil
  }

  alias OpenFGA.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:result, :map, OpenFGA.Model.BatchCheckSingleResult)
  end
end

