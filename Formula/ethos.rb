class Ethos < Formula
  desc "CLI for querying Ethos user profiles, XP balances, and reputation data"
  homepage "https://github.com/trust-ethos/ethos-cli"
  version "0.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.6/ethos-v0.0.6-cb0a141-darwin-arm64.tar.gz"
      sha256 "7b7fd62e75ee81d7a40c0eefbac4169330a7e7f6b10be0c254c498accb42bebb"
    end
    on_intel do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.6/ethos-v0.0.6-cb0a141-darwin-x64.tar.gz"
      sha256 "233d898664fc5a2121631978299c8e202f9041cf630aa58277307726ebb7d44c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.6/ethos-v0.0.6-cb0a141-linux-arm64.tar.gz"
      sha256 "4ef19638e68b747c8099be2b1367da7f83fdb2683313ed02181ab074df23d835"
    end
    on_intel do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.6/ethos-v0.0.6-cb0a141-linux-x64.tar.gz"
      sha256 "d1b64481e924a3c29f82697c3f351f6a8fe390097a56eaf3361f5ec9d373b3ea"
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
