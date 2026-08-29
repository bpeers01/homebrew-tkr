class Tkr < Formula
  desc "Token-efficient CLI proxy that filters and compresses LLM command output"
  homepage "https://github.com/bpeers01/tkr"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.25.0/tkr-darwin-arm64"
      sha256 "f936a0a79c9639164e91d4e03cc719bb5328386f7c073a37c3c3a80e8a200c6f"
    end
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.25.0/tkr-darwin-amd64"
      sha256 "ee0e74986b7f7c86e50cb1bf8a8a6e7df53be6026d01a491754eeb0dc35c6b15"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.25.0/tkr-linux-amd64"
      sha256 "4fc4bce21637e89b822d06ef1448cd702dd1541e04daef5824d3fc39faf9c4de"
    end
  end

  def install
    binary = Dir["tkr-*"].first
    bin.install binary => "tkr"
  end

  test do
    assert_match "tkr v#{version}", shell_output("#{bin}/tkr version")
  end
end
