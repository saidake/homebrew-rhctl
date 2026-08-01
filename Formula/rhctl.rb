class Rhctl < Formula
  desc "High-performance Rust CLI tool for remote host management"
  homepage "https://github.com/saidake/rhctl"
  version "1.0.2"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/saidake/rhctl/releases/download/v1.0.2/rhctl-v1.0.2-macos-arm64"
      sha256 "c6ad6603d045fb840d35c3c6441c084d65790c7630458c7b62ceb9760f506c99"
    end
    on_intel do
      url "https://github.com/saidake/rhctl/releases/download/v1.0.2/rhctl-v1.0.2-macos-x86_64"
      sha256 "09c36bc91af567be54beae39543db011bd56643fbb9f4673edd2f5cc43837b91"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/saidake/rhctl/releases/download/v1.0.2/rhctl-v1.0.2-linux-x86_64"
      sha256 "44e2eed2705d9faeb1c4a5bea5424a171423fe35dfae0364469534af4876d0b8"
    end
  end

  def install
    bin.install Dir["rhctl*"].first => "rhctl"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/rhctl --help")
  end
end
