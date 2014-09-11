defmodule PnxThingsIBought.PageController do
  use Phoenix.Controller
  alias PnxThingsIBought.Router

  def index(conn, _params) do
    purchases = PnxThingsIBought.Queries.purchases_query
    render conn, "index", purchases: purchases
  end

  def new(conn, _params) do
    render conn, "new"
  end

  def save(conn, params) do
    # is there a better way to convert the param["cost"] to float?
    {cost, _} = Float.parse(params["cost"])
    purchase = %PnxThingsIBought.Purchases{name: params["name"], cost: cost}
    PnxThingsIBought.Repo.insert(purchase)
    redirect conn, Router.index_path(:index)
  end

  def show(conn, params) do
    purchase = PnxThingsIBought.Queries.purchase_detail_query(params["id"])
    render conn, "show", [purchase: purchase, action: params["action"]]
  end

  def edit(conn, %{"id" => id}) do
    purchase = PnxThingsIBought.Queries.purchase_detail_query(id)
    render conn, "edit", purchase: purchase
  end

  def update(conn, params) do
    # is there a better way to convert the param["cost"] to float?
    {cost, _} = Float.parse(params["purchase_cost"])
    purchase = PnxThingsIBought.Repo.get(PnxThingsIBought.Purchases, params["id"])
    purchase = %{purchase | name: params["purchase_name"], cost: cost}
    PnxThingsIBought.Repo.update(purchase)
    redirect conn, Router.index_path(:index)
  end

  def destroy(conn, params) do
    purchase = PnxThingsIBought.Queries.purchase_detail_query(params["id"])
    PnxThingsIBought.Repo.delete(purchase)
    redirect conn, Router.index_path(:index)
  end
end
