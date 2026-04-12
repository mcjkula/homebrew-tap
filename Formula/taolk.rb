class Taolk < Formula
  desc "End-to-end encrypted messaging for Bittensor"
  homepage "https://github.com/mcjkula/taolk"
  license "MIT"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mcjkula/taolk/releases/download/v#{version}/taolk-macos-aarch64"
      sha256 "PLACEHOLDER_ARM64_SHA256"
    else
      url "https://github.com/mcjkula/taolk/releases/download/v#{version}/taolk-macos-x86_64"
      sha256 "PLACEHOLDER_X86_64_SHA256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mcjkula/taolk/releases/download/v#{version}/taolk-linux-aarch64"
      sha256 "PLACEHOLDER_LINUX_ARM64_SHA256"
    else
      url "https://github.com/mcjkula/taolk/releases/download/v#{version}/taolk-linux-x86_64"
      sha256 "PLACEHOLDER_LINUX_X86_64_SHA256"
    end
  end

  def install
    bin.install Dir["taolk*"].first => "taolk"
  end

  test do
    assert_match "taolk", shell_output("#{bin}/taolk --version")
  end
end
