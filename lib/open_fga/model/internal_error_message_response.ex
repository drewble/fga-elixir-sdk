# NOTE: This file is auto generated by OpenAPI Generator 7.10.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenFGA.Model.InternalErrorMessageResponse do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :code,
    :message
  ]

  @type t :: %__MODULE__{
    :code => OpenFGA.Model.InternalErrorCode.t | nil,
    :message => String.t | nil
  }

  alias OpenFGA.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:code, :struct, OpenFGA.Model.InternalErrorCode)
  end
end

