class Obulx < Formula
  desc "CLI for making paid API calls through the Obul x402 proxy"
  homepage "https://github.com/polymerdao/obul-client-sdk-ts"
  version "0.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/polymerdao/obul-client-sdk-ts/releases/download/v0.2.9/obulx-darwin-arm64.tar.gz"
      sha256 "1101725a6653269d4fd63ea2538c357f1aa68ac7683db008a2a39720006b78e4"
    end
    on_intel do
      url "https://github.com/polymerdao/obul-client-sdk-ts/releases/download/v0.2.9/obulx-darwin-x64.tar.gz"
      sha256 "1889678cdf8aba15d434817b8f8388008e38956d36f434c30af23b181f60ae83"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/polymerdao/obul-client-sdk-ts/releases/download/v0.2.9/obulx-linux-x64.tar.gz"
      sha256 "4ae5f61073a1ea8b73990fe3ab9c83aee333e51e276780ece63f8186883ee07a"
    end
  end

  def install
    bin.install "obulx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/obulx --version")
  end
end
