class Ethos < Formula
  desc "CLI for querying Ethos user profiles, XP balances, and reputation data"
  homepage "https://github.com/trust-ethos/ethos-cli"
  version "0.0.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.16/ethos-v0.0.16-c985922-darwin-arm64.tar.gz"
      sha256 "d69a1a8c55ec13680ee9536a65e16633cba63c6847fe195fca9b576ce80af81e"
    end
    on_intel do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.16/ethos-v0.0.16-c985922-darwin-x64.tar.gz"
      sha256 "72cfd886774b5d3e27c1b3756b3d6b3deb33a6e11f748fe37bf4124163deba98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.16/ethos-v0.0.16-c985922-linux-arm64.tar.gz"
      sha256 "2e3a91e50e20e6e6c5b5d0c69f895c00017f175a10c2a4d71c906ecd7b279cec"
    end
    on_intel do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.16/ethos-v0.0.16-c985922-linux-x64.tar.gz"
      sha256 "eb8992b2bd0b046bebc53143c60977b04b769bb1dbaec2f4143be4a4c585cc47"
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
