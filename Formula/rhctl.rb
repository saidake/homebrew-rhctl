class Rhctl < Formula
  desc "High-performance Rust CLI tool for remote host management"
  homepage "https://github.com/saidake/rhctl"
  version "1.0.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/saidake/rhctl/releases/download/v1.0.1/rhctl-v1.0.1-macos-arm64"
      sha256 "8c61e98b3604bf9ce99f1bf8c8cd41db34fe98f90c6a75775dd749702324df87"
    end
    on_intel do
      url "https://github.com/saidake/rhctl/releases/download/v1.0.1/rhctl-v1.0.1-macos-x86_64"
      sha256 "a14bdfaaf8cf7944a1ed3b61e8081ba849ab443a27cdcab208baf92a102a7013"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/saidake/rhctl/releases/download/v1.0.1/rhctl-v1.0.1-linux-x86_64"
      sha256 "c4ec4bd24ce0f433661cbfc954ed29a520ff78c617c72d32d5752c0260688e62"
    end
  end

  def install
    bin.install Dir["rhctl*"].first => "rhctl"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/rhctl --help")
  end
end
