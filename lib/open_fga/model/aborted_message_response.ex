# NOTE: This file is auto generated by OpenAPI Generator 7.10.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenFGA.Model.AbortedMessageResponse do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :code,
    :message
  ]

  @type t :: %__MODULE__{
    :code => String.t | nil,
    :message => String.t | nil
  }

  def decode(value) do
    value
  end
end

