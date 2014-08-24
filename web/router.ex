defmodule PnxThingsIBought.Router do
  use Phoenix.Router

  plug Plug.Static, at: "/static", from: :pnx_things_i_bought
  get "/", PnxThingsIBought.PageController, :index, as: :page
end
