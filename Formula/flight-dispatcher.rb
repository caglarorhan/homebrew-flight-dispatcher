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
      sha256 "414c43396cf6e50f30d85f8978864b9111624e9db29cf3defadef34c5abe00d2"

      def install
        bin.install "flight-dispatcher-#{version}-macos-x64" => "flight-dispatcher"
      end
    end
  end

  on_linux do
    url "https://github.com/caglarorhan/flight-dispatcher/releases/download/v1.1.0/flight-dispatcher-v1.1.0-linux-x64"
    sha256 "a994f7ac0cc8a77edff60cdd4529b5e0894372781282be174cc8e9ab35eeaea0"

    def install
      bin.install "flight-dispatcher-#{version}-linux-x64" => "flight-dispatcher"
    end
  end

  test do
    system "#{bin}/flight-dispatcher", "--help"
  end
end
