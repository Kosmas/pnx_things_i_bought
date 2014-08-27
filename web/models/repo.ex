defmodule PnxThingsIBought.Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  def conf do
    parse_url "ecto://username:password@localhost/pnx_things_i_bought"
  end

  def priv do
    app_dir(:pnx_things_i_bought, "priv/repo")
  end
end
