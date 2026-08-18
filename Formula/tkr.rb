class Tkr < Formula
  desc "Token-efficient CLI proxy that filters and compresses LLM command output"
  homepage "https://github.com/bpeers01/tkr"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.23.0/tkr-darwin-arm64"
      sha256 "ff70c03779f3ffe9b9e032c828d65523b8877953cc42283439c350a88bae600d"
    end
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.23.0/tkr-darwin-amd64"
      sha256 "89fbdd4b5bd6e3b3be3c8ee148cf457d277fb9ad140e006e698f641c8a0042d6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.23.0/tkr-linux-amd64"
      sha256 "5fa7728ad664e0e5456fe618c9417c19b661b279be1d993b239dcd8197a7b4a8"
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
