defmodule PnxThingsIBought.Router do
  use Phoenix.Router

  plug Plug.Static, at: "/static", from: :pnx_things_i_bought
  get "/", PnxThingsIBought.PageController, :index, as: :index
  get "/new", PnxThingsIBought.PageController, :new
  post "/new", PnxThingsIBought.PageController, :save, as: :save
  get "/purchase/:id", PnxThingsIBought.PageController, :show, as: :show
end
