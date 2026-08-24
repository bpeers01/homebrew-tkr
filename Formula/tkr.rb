class Tkr < Formula
  desc "Token-efficient CLI proxy that filters and compresses LLM command output"
  homepage "https://github.com/bpeers01/tkr"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.24.0/tkr-darwin-arm64"
      sha256 "32d2f9ee5c87d4507e15f809d130d2a1d59991decadd208287990314d8483ce4"
    end
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.24.0/tkr-darwin-amd64"
      sha256 "6f56651ec2962a60ecfe148b92ee5697158c4ed416361585ae2203bfb498f9d5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.24.0/tkr-linux-amd64"
      sha256 "7475499b2cd374fc215ee7b827a65f07524c050229d34546c49ea603180ddd9e"
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
