# This file is responsible for configuring your application
use Mix.Config

# Note this file is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project.

config :phoenix, PnxThingsIBought.Router,
  port: System.get_env("PORT"),
  ssl: false,
  code_reload: false,
  static_assets: true,
  cookies: true,
  session_key: "_pnx_things_i_bought_key",
  session_secret: "99^ZE^$U*SQZU$WTI4M2^ERO2*94T5&)OGPK6*V%D90C2L*OD@EXGX7&E)KW(U)38ES&5J_6_L(0)0Q"

config :phoenix, :logger,
  level: :error


# Import environment specific config. Note, this must remain at the bottom of
# this file to properly merge your previous config entries.
import_config "#{Mix.env}.exs"
