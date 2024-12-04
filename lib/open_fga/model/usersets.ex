# NOTE: This file is auto generated by OpenAPI Generator 7.10.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenFGA.Model.Usersets do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :child
  ]

  @type t :: %__MODULE__{
    :child => [OpenFGA.Model.Userset.t]
  }

  alias OpenFGA.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:child, :list, OpenFGA.Model.Userset)
  end
end

