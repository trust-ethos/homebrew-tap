class Ethos < Formula
  desc "CLI for querying Ethos user profiles, XP balances, and reputation data"
  homepage "https://github.com/trust-ethos/ethos-cli"
  version "0.0.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.19/ethos-v0.0.19-93cb952-darwin-arm64.tar.gz"
      sha256 "9f3f83a7640e7ea9a55d4ec63c96247c724bfe09c1ddc7dce1a05e2b883b36bc"
    end
    on_intel do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.19/ethos-v0.0.19-93cb952-darwin-x64.tar.gz"
      sha256 "021c047c6f0da15b50fae46b976071d515b23cca71335e8a4a12a7bd0c07bfd8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.19/ethos-v0.0.19-93cb952-linux-arm64.tar.gz"
      sha256 "ef5c965fe5c386ccd341addc0611541d39fd8a1b2f2c115c94565902e108fb30"
    end
    on_intel do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.19/ethos-v0.0.19-93cb952-linux-x64.tar.gz"
      sha256 "7f0900d2ac267e149ed99324f0469559cf053ef56a86241b3552e84f6a6b379c"
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
