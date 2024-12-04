# NOTE: This file is auto generated by OpenAPI Generator 7.10.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenFGA.Model.ReadAuthorizationModelResponse do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :authorization_model
  ]

  @type t :: %__MODULE__{
    :authorization_model => OpenFGA.Model.AuthorizationModel.t | nil
  }

  alias OpenFGA.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:authorization_model, :struct, OpenFGA.Model.AuthorizationModel)
  end
end
