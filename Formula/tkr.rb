class Tkr < Formula
  desc "Token-efficient CLI proxy that filters and compresses LLM command output"
  homepage "https://github.com/bpeers01/tkr"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.32.0/tkr-darwin-arm64"
      sha256 "24238a48498c40db91043658cf7e57232f1f6ba98bf21a6111351546684f1a95"
    end
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.32.0/tkr-darwin-amd64"
      sha256 "6d288244bf0311e96e4417641cfe76fc89c69b02ca02422c8f2c64f5a0acc973"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.32.0/tkr-linux-amd64"
      sha256 "80910797ce78afa18c34f92a0760f29f78d2f68da6148e866d28af03c570de68"
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
