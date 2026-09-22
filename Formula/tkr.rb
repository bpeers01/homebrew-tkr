class Tkr < Formula
  desc "Token-efficient CLI proxy that filters and compresses LLM command output"
  homepage "https://github.com/bpeers01/tkr"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.33.0/tkr-darwin-arm64"
      sha256 "65978c09bc7a16c547c60e25d8cfabb6b79059f06890e400ab1195fad17ce2a0"
    end
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.33.0/tkr-darwin-amd64"
      sha256 "eeefab5513a87bf557ff3131eaede078c361b34cc661e162e51c73e007445344"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.33.0/tkr-linux-amd64"
      sha256 "783413cba6999f84b3480f98808bbe1d6aac02f13827a74c1a9447cd2afa5393"
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
