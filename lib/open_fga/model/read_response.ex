# NOTE: This file is auto generated by OpenAPI Generator 7.10.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenFGA.Model.ReadResponse do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :tuples,
    :continuation_token
  ]

  @type t :: %__MODULE__{
    :tuples => [OpenFGA.Model.Tuple.t],
    :continuation_token => String.t
  }

  def decode(value) do
    value
  end
end

