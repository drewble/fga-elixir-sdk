# NOTE: This file is auto generated by OpenAPI Generator 7.10.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenFGA.Model.ExpandRequestTupleKey do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :relation,
    :object
  ]

  @type t :: %__MODULE__{
    :relation => String.t,
    :object => String.t
  }

  def decode(value) do
    value
  end
end
