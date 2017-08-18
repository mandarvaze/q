defmodule Q.Mixfile do
  use Mix.Project

  def project do
    [app: :qq,
     version: "0.1.1",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: "Quick and dirty debugging output for elixir programmers.",
     package: package(),
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  def package do
    [
      maintainers: ["Mandar Vaze"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/mandarvaze/q"}
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:credo, "~> 0.7", only: [:dev]},
      {:earmark, ">= 0.0.0", only: :dev},
      {:ex_doc, "~> 0.12", only: :dev}
    ]
  end
end
