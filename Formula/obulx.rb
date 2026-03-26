class Obulx < Formula
  desc "CLI for making paid API calls through the Obul x402 proxy"
  homepage "https://github.com/polymerdao/obul-client-sdk-ts"
  version "0.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/polymerdao/obul-client-sdk-ts/releases/download/v0.2.13/obulx-darwin-arm64.tar.gz"
      sha256 "138e97737b5d328e7cb1db5131c9455516367f8c56e37924917975e33182e41c"
    end
    on_intel do
      url "https://github.com/polymerdao/obul-client-sdk-ts/releases/download/v0.2.13/obulx-darwin-x64.tar.gz"
      sha256 "67b2be1af484f27b50a1438e45cd79a0faf30756dfa30e3a193879cd1fea5b83"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/polymerdao/obul-client-sdk-ts/releases/download/v0.2.13/obulx-linux-x64.tar.gz"
      sha256 "f69e2c1815bf3c6d09b1763454531b5d4dfe835e479c7068fdc379aff6ea10a8"
    end
  end

  def install
    bin.install "obulx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/obulx --version")
  end
end
