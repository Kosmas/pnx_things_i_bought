defmodule PnxThingsIBought.Queries do
  import Ecto.Query

  def purchases_query do
    query = from purchase in PnxThingsIBought.Purchases,
            select: purchase
    PnxThingsIBought.Repo.all(query)
  end

  def purchase_detail_query(id) do
    int_id = String.to_integer(id)
    query = from purchase in PnxThingsIBought.Purchases,
            where: purchase.id == ^int_id,
            select: purchase
    PnxThingsIBought.Repo.all(query) |> List.first
  end
end
