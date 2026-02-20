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
      sha256 "ed061e177f9365806cf6fb36f66b97b32165a91910f150ac427e770fdff1862e"

      def install
        bin.install "flight-dispatcher-#{version}-macos-x64" => "flight-dispatcher"
      end
    end
  end

  on_linux do
    url "https://github.com/caglarorhan/flight-dispatcher/releases/download/v1.1.0/flight-dispatcher-v1.1.0-linux-x64"
    sha256 "8911af13fb5df7abea0d5a76d66fd6768a001c5ed872017fd1aa6b3f4e8f1e38"

    def install
      bin.install "flight-dispatcher-#{version}-linux-x64" => "flight-dispatcher"
    end
  end

  test do
    system "#{bin}/flight-dispatcher", "--help"
  end
end
