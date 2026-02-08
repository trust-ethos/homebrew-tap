class Ethos < Formula
  desc "CLI for querying Ethos user profiles, XP balances, and reputation data"
  homepage "https://github.com/trust-ethos/ethos-cli"
  version "0.0.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.17/ethos-v0.0.17-f683f33-darwin-arm64.tar.gz"
      sha256 "2143b10635bee1fee182b0bb5aeaeb74c3da018917d3aa987e5b68c6df79c9f1"
    end
    on_intel do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.17/ethos-v0.0.17-f683f33-darwin-x64.tar.gz"
      sha256 "66176f36cdac6c1abb2f77fc7b4d393cfd7baf5bfbb5c604a7117fed0332c174"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.17/ethos-v0.0.17-f683f33-linux-arm64.tar.gz"
      sha256 "5cb66624daefd00df6b060a4c755d1b78b35f364810a0e2d1a2e76e9dff813f9"
    end
    on_intel do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.17/ethos-v0.0.17-f683f33-linux-x64.tar.gz"
      sha256 "8f742a13902d0b22a005555fbdeba38b47d17948fe84224b4878221a7aa3b028"
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
