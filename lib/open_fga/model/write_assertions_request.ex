# NOTE: This file is auto generated by OpenAPI Generator 7.10.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenFGA.Model.WriteAssertionsRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :assertions
  ]

  @type t :: %__MODULE__{
    :assertions => [OpenFGA.Model.Assertion.t]
  }

  alias OpenFGA.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:assertions, :list, OpenFGA.Model.Assertion)
  end
end

