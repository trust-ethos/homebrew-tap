class Ethos < Formula
  desc "CLI for querying Ethos user profiles, XP balances, and reputation data"
  homepage "https://github.com/trust-ethos/ethos-cli"
  version "0.0.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.11/ethos-v0.0.11-b331c16-darwin-arm64.tar.gz"
      sha256 "e1748db7fa5e3843ae4158ae88d0e36dcaa08838ff7728cb0ba9d7965d3b34cd"
    end
    on_intel do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.11/ethos-v0.0.11-b331c16-darwin-x64.tar.gz"
      sha256 "aa818959372aa9fec26bcf9661c612c61dfc3a9fa256e620cbeda4b7bac1ad07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.11/ethos-v0.0.11-b331c16-linux-arm64.tar.gz"
      sha256 "1b2a67ce83a1874f0309cdd733ede64cdbacb9ace6947c3d457e8bd41b113237"
    end
    on_intel do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.11/ethos-v0.0.11-b331c16-linux-x64.tar.gz"
      sha256 "fcec626a2d2dc8aba9576debb4f3bcb24620951b84ed9c35b44493a61dd96a98"
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
