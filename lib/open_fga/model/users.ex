# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenFGA.Model.Users do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :users
  ]

  @type t :: %__MODULE__{
    :users => [String.t]
  }
end

defimpl Poison.Decoder, for: OpenFGA.Model.Users do
  def decode(value, _options) do
    value
  end
end

