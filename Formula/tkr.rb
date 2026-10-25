class Tkr < Formula
  desc "Token-efficient CLI proxy that filters and compresses LLM command output"
  homepage "https://github.com/bpeers01/tkr"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.37.0/tkr-darwin-arm64"
      sha256 "003382ec7d9cb7cc9fa26ffd21563368df5dcc573858828746f2e726f2266df8"
    end
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.37.0/tkr-darwin-amd64"
      sha256 "4f03298c0a2be696a3361b2ca1d6417a3fc0977207af45b2a62260cf996c50dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.37.0/tkr-linux-amd64"
      sha256 "a43ccfc14bea6f6878d666bf7ee93aeee7a6e8bd5c774e02419883b3949167da"
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
