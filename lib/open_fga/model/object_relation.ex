# NOTE: This file is auto generated by OpenAPI Generator 7.10.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenFGA.Model.ObjectRelation do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :object,
    :relation
  ]

  @type t :: %__MODULE__{
    :object => String.t | nil,
    :relation => String.t | nil
  }

  def decode(value) do
    value
  end
end

