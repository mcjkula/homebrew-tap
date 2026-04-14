class Taolk < Formula
  desc "End-to-end encrypted messaging for Bittensor"
  homepage "https://github.com/mcjkula/taolk"
  license "MIT"
  version "2.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mcjkula/taolk/releases/download/v#{version}/taolk-macos-aarch64"
      sha256 "e9dcfee6f4c489e1c81942be8451704bd61aff4a82e7f997ba5cbacd4b93d6da"
    else
      url "https://github.com/mcjkula/taolk/releases/download/v#{version}/taolk-macos-x86_64"
      sha256 "1f95fe4008e1aa55ddc6bf80e64f61200d25d92466ede95f6b6766cc9887a685"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mcjkula/taolk/releases/download/v#{version}/taolk-linux-aarch64"
      sha256 "1beb9f56a77662bc5c3dba6d98995f4cf7deaa0735c6cdb439b7ec83ef3bc770"
    else
      url "https://github.com/mcjkula/taolk/releases/download/v#{version}/taolk-linux-x86_64"
      sha256 "e51e8604007e3c31d1ae288a8297d5fc32f79219da4de549798cd43f50fc8ba6"
    end
  end

  def install
    bin.install Dir["taolk*"].first => "taolk"
  end

  test do
    assert_match "taolk", shell_output("#{bin}/taolk --version")
  end
end
