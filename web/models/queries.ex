defmodule PnxThingsIBought.Queries do
  import Ecto.Query

  def purchases_query do
    query = from purchases in PnxThingsIBought.Purchases,
            select: purchase
    PnxThingsIBought.Repo.all(query)
  end
end
