defmodule PnxThingsIBought.Mixfile do
  use Mix.Project

  def project do
    [ app: :pnx_things_i_bought,
      version: "0.0.1",
      elixir: "~> 0.15.0",
      elixirc_paths: ["lib", "web"],
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [
      mod: { PnxThingsIBought, [] },
      applications: [:phoenix, :cowboy, :postgrex, :ecto]
    ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat" }
  defp deps do
    [
      {:phoenix, github: "phoenixframework/phoenix"},
      {:cowboy, "~> 1.0.0"},
      {:postgrex, "~> 0.5.4"},
      {:ecto, "~> 0.2.3"}
    ]
  end
end
