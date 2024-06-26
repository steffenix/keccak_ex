defmodule KeccakEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :keccak_ex,
      version: "0.2.0",
      elixir: "~> 1.16.0",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      name: "KeccakEx",
      # source_url: ["https://github.com/N-0x90/keccak_ex"]
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:ex_doc, "~> 0.25.5", only: :dev, runtime: false},
      {:binary, "~> 0.0.5"},
    ]
  end

  defp description do
    """
    Implementation of Keccak in Elixir.
    """
  end

  defp package do
    [
      files: ["lib", "test", "mix.exs", "README.md"],
      maintainers: ["N0x90"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/N-0x90/keccak_ex"}
    ]
  end
end
