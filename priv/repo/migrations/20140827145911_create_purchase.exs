defmodule PnxThingsIBought.Repo.Migrations.CreatePurchase do
  use Ecto.Migration

  def up do
    "CREATE TABLE purchases(id serial primary key, name varchar(125), cost numeric)"
  end

  def down do
    "DROP TABLE purchases"
  end
end
