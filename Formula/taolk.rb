class Taolk < Formula
  desc "End-to-end encrypted messaging for Bittensor"
  homepage "https://github.com/mcjkula/taolk"
  license "MIT"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mcjkula/taolk/releases/download/v#{version}/taolk-macos-aarch64"
      sha256 "58a3919a781f67e5aa2e0b38b2efb475246e35af2aba3728588ad62f61e84a92"
    else
      url "https://github.com/mcjkula/taolk/releases/download/v#{version}/taolk-macos-x86_64"
      sha256 "2b1580f045f7ae375040b885df81dc0a8fa6dfbfcf3f37bc32705626bb747ea1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mcjkula/taolk/releases/download/v#{version}/taolk-linux-aarch64"
      sha256 "b6a78f8247b8e3db12948a571cddc64df3a612e32543f2324fa6520494c63612"
    else
      url "https://github.com/mcjkula/taolk/releases/download/v#{version}/taolk-linux-x86_64"
      sha256 "f073036309eb1265f443c8bdbc01e7bb81022cf523c9d371b6595a8952291022"
    end
  end

  def install
    bin.install Dir["taolk*"].first => "taolk"
  end

  test do
    assert_match "taolk", shell_output("#{bin}/taolk --version")
  end
end
