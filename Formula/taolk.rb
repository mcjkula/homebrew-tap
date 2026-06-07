class Taolk < Formula
  desc "End-to-end encrypted messaging for Bittensor"
  homepage "https://github.com/mcjkula/taolk"
  license "MIT"
  version "2.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mcjkula/taolk/releases/download/v#{version}/taolk-macos-aarch64"
      sha256 "3b5f541cfacfc1cf70240b4eb06875185a478520b156a7d42bcb14f9dde4773e"
    else
      url "https://github.com/mcjkula/taolk/releases/download/v#{version}/taolk-macos-x86_64"
      sha256 "0625ad8f3777d21b64e47b0dc8023db2b68a475733ef7f0873ff1f5dedf43b5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mcjkula/taolk/releases/download/v#{version}/taolk-linux-aarch64"
      sha256 "f8ee669f66280ec7de898023fc24de963494bd4e83262f7c45982358237f124a"
    else
      url "https://github.com/mcjkula/taolk/releases/download/v#{version}/taolk-linux-x86_64"
      sha256 "595df3e38a7a55ff884264e4d840bd9c4bbcbc2e50ad3809af8206d22922003d"
    end
  end

  def install
    bin.install Dir["taolk*"].first => "taolk"
  end

  test do
    assert_match "taolk", shell_output("#{bin}/taolk --version")
  end
end
