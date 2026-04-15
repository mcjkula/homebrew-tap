class Taolk < Formula
  desc "End-to-end encrypted messaging for Bittensor"
  homepage "https://github.com/mcjkula/taolk"
  license "MIT"
  version "2.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mcjkula/taolk/releases/download/v#{version}/taolk-macos-aarch64"
      sha256 "d94a6741fb3d54ddce3fda9b2ad08e297281ab3f29d037c0a456976ef3827109"
    else
      url "https://github.com/mcjkula/taolk/releases/download/v#{version}/taolk-macos-x86_64"
      sha256 "8e9abd842d5621ae74e56383eb31e3ed43df4e1cfc35b6535fd34b1c5c978a3e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mcjkula/taolk/releases/download/v#{version}/taolk-linux-aarch64"
      sha256 "b0a730850e46871837e4a1a67a4ad9d6dd8504aa0cc2f750e3bf325c6a73dfaf"
    else
      url "https://github.com/mcjkula/taolk/releases/download/v#{version}/taolk-linux-x86_64"
      sha256 "21aa59191d80e41b14246f5d111455aadea57a89eb3ae2a5ac8fbec953b7d164"
    end
  end

  def install
    bin.install Dir["taolk*"].first => "taolk"
  end

  test do
    assert_match "taolk", shell_output("#{bin}/taolk --version")
  end
end
