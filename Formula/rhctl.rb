class Rhctl < Formula
  desc "High-performance Rust CLI tool for remote host management"
  homepage "https://github.com/saidake/rhctl"
  version "1.0.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/saidake/rhctl/releases/download/v1.0.3/rhctl-v1.0.3-macos-arm64"
      sha256 "b51de47f3e2ab2bc2e64fd810da74b2a0ed48e66348275c0c1203b49d2e4bc18"
    end
    on_intel do
      url "https://github.com/saidake/rhctl/releases/download/v1.0.3/rhctl-v1.0.3-macos-x86_64"
      sha256 "820905b5533eed8a5a076da4b93f396704cff97f7bce782ea53d25e8ea18145c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/saidake/rhctl/releases/download/v1.0.3/rhctl-v1.0.3-linux-x86_64"
      sha256 "eae359aee1d53fe051424edf61f52bc275ef391ad1ec80040d518209f3b56317"
    end
  end

  def install
    bin.install Dir["rhctl*"].first => "rhctl"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/rhctl --help")
  end
end
