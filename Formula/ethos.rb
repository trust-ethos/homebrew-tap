class Ethos < Formula
  desc "CLI for querying Ethos user profiles, XP balances, and reputation data"
  homepage "https://github.com/trust-ethos/ethos-cli"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.7/ethos-v0.0.7-745f553-darwin-arm64.tar.gz"
      sha256 "e03285241c7509e6358c78ea1d7db86fc4c784094cb762eac645ec9034f37b2c"
    end
    on_intel do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.7/ethos-v0.0.7-745f553-darwin-x64.tar.gz"
      sha256 "b7f79395808ddcfe6598aba7d7467da8db8934c55c6b3ce79902ede0e6e8bbf4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.7/ethos-v0.0.7-745f553-linux-arm64.tar.gz"
      sha256 "8038055c63970638730a7388508a3aad0f52abc46b22be2c0cecd2e789cc87cd"
    end
    on_intel do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.7/ethos-v0.0.7-745f553-linux-x64.tar.gz"
      sha256 "727cf97e5efa8f36da27ae7c151dbd9d37f1c39118fc7f5be6487ce3b71d6ba3"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/ethos"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ethos --version")
  end
end
