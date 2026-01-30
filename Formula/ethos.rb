class Ethos < Formula
  desc "CLI for querying Ethos user profiles, XP balances, and reputation data"
  homepage "https://github.com/trust-ethos/ethos-cli"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.5/ethos-v0.0.5-dca6a10-darwin-arm64.tar.gz"
      sha256 "e0a5583d21a004a9c8beac8fe6e5276995004f512b63c903e5909622d99e7af1"
    end
    on_intel do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.5/ethos-v0.0.5-dca6a10-darwin-x64.tar.gz"
      sha256 "34c4a9c2c08f361314a233b2400e907e4414f56221c083e1aab22b23c3c731c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.5/ethos-v0.0.5-dca6a10-linux-arm64.tar.gz"
      sha256 "6b4f37398cf274ab3be3aa436d3c6520acc6b7e3341258675d899b11bdcaa5b4"
    end
    on_intel do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.5/ethos-v0.0.5-dca6a10-linux-x64.tar.gz"
      sha256 "860af5dfa565863cbd9ab5243f8f0dfce93eea7d9bc7fe824b0a53d7c7840e57"
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
