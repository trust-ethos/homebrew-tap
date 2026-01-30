class Ethos < Formula
  desc "CLI for querying Ethos user profiles, XP balances, and reputation data"
  homepage "https://github.com/trust-ethos/ethos-cli"
  version "0.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.10/ethos-v0.0.10-ca6b98f-darwin-arm64.tar.gz"
      sha256 "0479489cdb1f757b481ceda27f8d84821325a99684fedc70fa0d0d958b1d567d"
    end
    on_intel do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.10/ethos-v0.0.10-ca6b98f-darwin-x64.tar.gz"
      sha256 "3409a6aa8c1bfb71bc61c539b4c0d922a0d903d87b5cf26d3d89e6a9dabdba50"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.10/ethos-v0.0.10-ca6b98f-linux-arm64.tar.gz"
      sha256 "54a35c8faaa55a6b26d3f06b59e7b9ec72861ae1c077e4cef182ca53260cef64"
    end
    on_intel do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.10/ethos-v0.0.10-ca6b98f-linux-x64.tar.gz"
      sha256 "214acab1a3d890a03573b048c24311755d6e545f42c53609627a8efaea3fdab1"
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
