class FlightDispatcher < Formula
  desc "Zero-install CLI that auto-generates .github/copilot-instructions.md"
  homepage "https://github.com/caglarorhan/flight-dispatcher"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/caglarorhan/flight-dispatcher/releases/download/v1.1.0/flight-dispatcher-v1.1.0-macos-arm64"
      sha256 "c336195ad2df7b2bcfb5264a11989d0974a1da1717689646614d5a87b20c24c0"

      def install
        bin.install "flight-dispatcher-#{version}-macos-arm64" => "flight-dispatcher"
      end
    else
      url "https://github.com/caglarorhan/flight-dispatcher/releases/download/v1.1.0/flight-dispatcher-v1.1.0-macos-x64"
      sha256 "4964c9ded70a25ddd145736e482ba0f0d87640a4ce1dfb27d94b1f8455d5d29e"

      def install
        bin.install "flight-dispatcher-#{version}-macos-x64" => "flight-dispatcher"
      end
    end
  end

  on_linux do
    url "https://github.com/caglarorhan/flight-dispatcher/releases/download/v1.1.0/flight-dispatcher-v1.1.0-linux-x64"
    sha256 "d7ed0e5881a9b04c6c5365c92902ad16b4f5494c9b08d03ac3aeb59734141a02"

    def install
      bin.install "flight-dispatcher-#{version}-linux-x64" => "flight-dispatcher"
    end
  end

  test do
    system "#{bin}/flight-dispatcher", "--help"
  end
end
