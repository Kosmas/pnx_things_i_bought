defmodule PnxThingsIBought.Purchases do
  use Ecto.Model

  schema "purchases" do
    field :name, :string
    field :cost, :float
  end
end
