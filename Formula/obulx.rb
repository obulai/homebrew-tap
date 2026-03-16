class Obulx < Formula
  desc "CLI for making paid API calls through the Obul x402 proxy"
  homepage "https://github.com/polymerdao/obul-client-sdk-ts"
  version "0.2.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/polymerdao/obul-client-sdk-ts/releases/download/v0.2.12/obulx-darwin-arm64.tar.gz"
      sha256 "fef205b9a80632378a6a19dcaa102d99a77c35496a8692f14854c437553d80f9"
    end
    on_intel do
      url "https://github.com/polymerdao/obul-client-sdk-ts/releases/download/v0.2.12/obulx-darwin-x64.tar.gz"
      sha256 "6a9995481b1e3f0845a705b9d581ab0d85a18b6283a6db7335bb10f16f9a2a68"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/polymerdao/obul-client-sdk-ts/releases/download/v0.2.12/obulx-linux-x64.tar.gz"
      sha256 "ff8cf5c2622826019882365a77da3e279d5a4122818ea7d11331ee3454a56c67"
    end
  end

  def install
    bin.install "obulx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/obulx --version")
  end
end
