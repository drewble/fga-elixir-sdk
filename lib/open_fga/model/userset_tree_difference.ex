# NOTE: This file is auto generated by OpenAPI Generator 7.10.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenFGA.Model.UsersetTreeDifference do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :base,
    :subtract
  ]

  @type t :: %__MODULE__{
    :base => OpenFGA.Model.Node.t,
    :subtract => OpenFGA.Model.Node.t
  }

  alias OpenFGA.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:base, :struct, OpenFGA.Model.Node)
     |> Deserializer.deserialize(:subtract, :struct, OpenFGA.Model.Node)
  end
end

