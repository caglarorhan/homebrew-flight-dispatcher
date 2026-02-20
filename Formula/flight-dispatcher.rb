class FlightDispatcher < Formula
  desc "Zero-install CLI that auto-generates .github/copilot-instructions.md"
  homepage "https://github.com/caglarorhan/flight-dispatcher"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/caglarorhan/flight-dispatcher/releases/download/v1.1.0/flight-dispatcher-v1.1.0-macos-arm64"
      sha256 "3f11978bb803f6a874e842c995be7bed9e144a11784f3fd1c19c0a7bc0f32976"

      def install
        bin.install "flight-dispatcher-#{version}-macos-arm64" => "flight-dispatcher"
      end
    else
      url "https://github.com/caglarorhan/flight-dispatcher/releases/download/v1.1.0/flight-dispatcher-v1.1.0-macos-x64"
      sha256 "7227a5048d00ebfde8f180d3b1f28c8f67a907bc9b0a948ca2699fa1b378a3a8"

      def install
        bin.install "flight-dispatcher-#{version}-macos-x64" => "flight-dispatcher"
      end
    end
  end

  on_linux do
    url "https://github.com/caglarorhan/flight-dispatcher/releases/download/v1.1.0/flight-dispatcher-v1.1.0-linux-x64"
    sha256 "18c2ec00be20111ac4e57546c4cc0adbd6da85063445744ff53b114bf4ecc7fe"

    def install
      bin.install "flight-dispatcher-#{version}-linux-x64" => "flight-dispatcher"
    end
  end

  test do
    system "#{bin}/flight-dispatcher", "--help"
  end
end
