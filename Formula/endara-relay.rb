class EndaraRelay < Formula
  desc "Local MCP tool aggregator — aggregate multiple MCP servers behind one endpoint"
  homepage "https://github.com/endara-ai/endara-relay"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/endara-ai/monorepo/releases/download/v#{version}/endara-relay-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/endara-ai/monorepo/releases/download/v#{version}/endara-relay-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/endara-ai/monorepo/releases/download/v#{version}/endara-relay-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/endara-ai/monorepo/releases/download/v#{version}/endara-relay-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "endara-relay"
  end

  test do
    assert_match "endara-relay", shell_output("#{bin}/endara-relay --version")
  end
end

