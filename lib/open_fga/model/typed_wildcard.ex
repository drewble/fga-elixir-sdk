# NOTE: This file is auto generated by OpenAPI Generator 7.10.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenFGA.Model.TypedWildcard do
  @moduledoc """
  Type bound public access.  Normally represented using the `<type>:*` syntax  `employee:*` represents every object of type `employee`, including those not currently present in the system  See https://openfga.dev/docs/concepts#what-is-type-bound-public-access
  """

  @derive Jason.Encoder
  defstruct [
    :type
  ]

  @type t :: %__MODULE__{
    :type => String.t
  }

  def decode(value) do
    value
  end
end

