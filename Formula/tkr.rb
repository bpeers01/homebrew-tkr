class Tkr < Formula
  desc "Token-efficient CLI proxy that filters and compresses LLM command output"
  homepage "https://github.com/bpeers01/tkr"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.30.0/tkr-darwin-arm64"
      sha256 "218e12e3806b4bbca73dc0b85d5f1cb62d9be8c674ad8c435daca38d643fb17b"
    end
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.30.0/tkr-darwin-amd64"
      sha256 "9907fe9138ed047e58604d8abbf703ade345ac06ca83071d51652f426415071f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.30.0/tkr-linux-amd64"
      sha256 "d6b845df652f8b1426493023b609c64a3413310716998a83c57895f1c3c8d84e"
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
