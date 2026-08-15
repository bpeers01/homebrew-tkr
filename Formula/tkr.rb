class Tkr < Formula
  desc "Token-efficient CLI proxy that filters and compresses command output for LLM agents"
  homepage "https://github.com/bpeers01/tkr"
  version "5.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.22.0/tkr-darwin-arm64"
      sha256 "fa65fca618cace81969179b8149b5e473eaf041ac9779c4308ebab58248defe2"
    end
    on_intel do
      url "https://github.com/bpeers01/tkr-releases/releases/download/v5.22.0/tkr-darwin-amd64"
      sha256 "f8d12e24182c223af32a2b9034ca5c92a1e34d6c80d0fe41db753a76d4cb8ba8"
    end
  end

  on_linux do
    url "https://github.com/bpeers01/tkr-releases/releases/download/v5.22.0/tkr-linux-amd64"
    sha256 "721fcc5a9f5728caf43fb6963f64b991461081f8a67555cea42f508b3cc60243"
  end

  def install
    binary = Dir["tkr-*"].first
    bin.install binary => "tkr"
  end

  test do
    assert_match "tkr v#{version}", shell_output("#{bin}/tkr version")
  end
end
