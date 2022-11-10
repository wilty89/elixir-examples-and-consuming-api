defmodule HtppApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :htpp_api,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      #https://github.com/unrelentingtech/httpotion
      {:tesla, "~> 1.4"},
      #https://github.com/devinus/poison
      {:jason, "~> 1.4"},
      {:poison, "~> 5.0"}
    ]
  end
end
