class Ethos < Formula
  desc "CLI for querying Ethos user profiles, XP balances, and reputation data"
  homepage "https://github.com/trust-ethos/ethos-cli"
  version "0.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.9/ethos-v0.0.9-738c0c5-darwin-arm64.tar.gz"
      sha256 "0a0591ef93a3e4bd8430e8187931aae1aef2e9e59ad501a48198c6cd68d04959"
    end
    on_intel do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.9/ethos-v0.0.9-738c0c5-darwin-x64.tar.gz"
      sha256 "b9f17dee493c02050172325dbdcebac64969fd974d58704aa50c932dc1322804"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.9/ethos-v0.0.9-738c0c5-linux-arm64.tar.gz"
      sha256 "92645823d077fc07372d1b5144efa63aa1baa0f3cb5e4426e2b0d88f22eb3f13"
    end
    on_intel do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.9/ethos-v0.0.9-738c0c5-linux-x64.tar.gz"
      sha256 "5ba589a887e596084e128afc8b9b6e47f6328d6dec1c7b30fb0aa1a3baef19c4"
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
