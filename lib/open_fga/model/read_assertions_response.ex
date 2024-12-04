# NOTE: This file is auto generated by OpenAPI Generator 7.10.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenFGA.Model.ReadAssertionsResponse do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :authorization_model_id,
    :assertions
  ]

  @type t :: %__MODULE__{
    :authorization_model_id => String.t,
    :assertions => [OpenFGA.Model.Assertion.t] | nil
  }

  alias OpenFGA.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:assertions, :list, OpenFGA.Model.Assertion)
  end
end
