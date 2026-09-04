class Tkr < Formula
  desc "Token-efficient CLI proxy that filters and compresses LLM command output"
  homepage "https://github.com/bpeers01/tkr"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.26.0/tkr-darwin-arm64"
      sha256 "d5ac00241b847f368c5a60bb4b7a6eb96c112619f3f32f9cb6b9c0b44fd138fb"
    end
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.26.0/tkr-darwin-amd64"
      sha256 "fd8cea1d567efd01da20b3d0b39505f3e4725642548a395107e9c3bc57639258"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.26.0/tkr-linux-amd64"
      sha256 "c571a923deb096e619823191f51ad327a8dbf7747635a40768afd3108f04a0ac"
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
