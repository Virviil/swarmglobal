defmodule SwarmGlobal.Mixfile do
  use Mix.Project

  def project do
    [
      app: :swarmglobal,
      version: "1.0.0",
      elixir: "~> 1.3",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      package: package(),
    ]
  end

  def application do
    [
      applications: [:syntax_tools]
    ]
  end

  defp deps do
    [
      {:benchfella, "~> 0.3.0", only: :dev}
    ]
  end

  def package do
    [
      name: :fastglobal,
      description: "Fast no copy cluster globals for Elixir & Erlang.",
      maintainers: [],
      licenses: ["MIT"],
      files: ["lib/*", "mix.exs", "README*", "LICENSE*"],
      links: %{
        "GitHub" => "https://github.com/virviil/swarmglobal",
      },
    ]
  end
end
