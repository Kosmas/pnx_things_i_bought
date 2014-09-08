defmodule PnxThingsIBought.Purchases do
  use Ecto.Model

  schema "purchases" do
    field :name, :string
    field :cost, :float
  end

  validate purchase,
    name: present(),
    cost: greater_than(0)
end
