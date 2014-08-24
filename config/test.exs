use Mix.Config

config :phoenix, PnxThingsIBought.Router,
  port: System.get_env("PORT") || 4001,
  ssl: false,
  code_reload: false,
  cookies: true,
  consider_all_requests_local: true,
  session_key: "_pnx_things_i_bought_key",
  session_secret: "99^ZE^$U*SQZU$WTI4M2^ERO2*94T5&)OGPK6*V%D90C2L*OD@EXGX7&E)KW(U)38ES&5J_6_L(0)0Q"

config :phoenix, :logger,
  level: :debug


