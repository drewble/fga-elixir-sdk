# NOTE: This file is auto generated by OpenAPI Generator 7.10.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenFGA.Model.Store do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :created_at,
    :updated_at,
    :deleted_at
  ]

  @type t :: %__MODULE__{
    :id => String.t,
    :name => String.t,
    :created_at => DateTime.t,
    :updated_at => DateTime.t,
    :deleted_at => DateTime.t | nil
  }

  alias OpenFGA.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_at, :datetime, nil)
     |> Deserializer.deserialize(:updated_at, :datetime, nil)
     |> Deserializer.deserialize(:deleted_at, :datetime, nil)
  end
end
