class Tkr < Formula
  desc "Token-efficient CLI proxy that filters and compresses LLM command output"
  homepage "https://github.com/bpeers01/tkr"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.34.0/tkr-darwin-arm64"
      sha256 "fe7c6774a033434585f67b3bc6761f3323d33fd71e49d61a9bd60cfc7ac4789c"
    end
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.34.0/tkr-darwin-amd64"
      sha256 "b513ea852540a48cd86902f757a62772595f2ab782602eee77b0ed875a067011"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.34.0/tkr-linux-amd64"
      sha256 "6c195e82e9aba927d2aea6500ae24b6872685a5e660307ea19662272cc9091d3"
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
