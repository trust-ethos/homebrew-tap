class Ethos < Formula
  desc "CLI for querying Ethos user profiles, XP balances, and reputation data"
  homepage "https://github.com/trust-ethos/ethos-cli"
  version "0.0.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.18/ethos-v0.0.18-4afa897-darwin-arm64.tar.gz"
      sha256 "2f1c459e895dcd5aa3d8eb6c2abb6ac973b662cbfa95e1ee90d7f9338cfd43f5"
    end
    on_intel do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.18/ethos-v0.0.18-4afa897-darwin-x64.tar.gz"
      sha256 "896bb5f472a14d63ddb0e5eb265afc0b946e43fffc500a5605bf5866aa57e2c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.18/ethos-v0.0.18-4afa897-linux-arm64.tar.gz"
      sha256 "f44d2fd55e405e65ec4b782eb5010a1c02cec284d5a3b62ae005b2af34eab9bc"
    end
    on_intel do
      url "https://github.com/trust-ethos/ethos-cli/releases/download/v0.0.18/ethos-v0.0.18-4afa897-linux-x64.tar.gz"
      sha256 "48ff7b23237c04fb6d023aa02dd45b636ded399f37151cd3105afe2abbe90bba"
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
