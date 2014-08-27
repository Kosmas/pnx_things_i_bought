defmodule PnxThingsIBought.PageController do
  use Phoenix.Controller

  def index(conn, _params) do
    purchases = PnxThingsIBought.Queries.purchases_query
    render conn, "index", purchases: purchases
  end
end
