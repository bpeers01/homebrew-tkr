class Tkr < Formula
  desc "Token-efficient CLI proxy that filters and compresses LLM command output"
  homepage "https://github.com/bpeers01/tkr"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.28.0/tkr-darwin-arm64"
      sha256 "6455da2cb5d153afd01aee73999bcb24436410b02547a71be66d3fd7aed49b34"
    end
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.28.0/tkr-darwin-amd64"
      sha256 "493599749904c8ce0c15df82825fb9388f17a39abae08edead6e15dd0de0a584"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.28.0/tkr-linux-amd64"
      sha256 "66a59e7ae46fccd6e2d714bb51343f7eaafc8a66a49a8f823f6d18d7d2f6a414"
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
