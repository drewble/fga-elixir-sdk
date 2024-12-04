# NOTE: This file is auto generated by OpenAPI Generator 7.10.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenFGA.Model.UsersetTreeTupleToUserset do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :tupleset,
    :computed
  ]

  @type t :: %__MODULE__{
    :tupleset => String.t,
    :computed => [OpenFGA.Model.Computed.t]
  }

  alias OpenFGA.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:computed, :list, OpenFGA.Model.Computed)
  end
end
