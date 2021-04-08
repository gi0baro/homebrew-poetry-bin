class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.1.5"
    revision 3
    license "MIT"
    bottle :unneeded

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.5-3/poetry-bin-1.1.5-3-x86_64-apple-darwin.tar.gz"
        sha256 "62f497b1cdfbef352351fb54dd264594360591621da62d1e3969e65a3d5ce330"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.5-3/poetry-bin-1.1.5-3-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "766c9215ff5f804ce1c9f7a56a49cebd30f76e1d19afbb99e2a79dd67a9d59af"
    end

    def install
        bin.install "bin/poetry"
        lib.install Dir["lib/*"]
        prefix.install Dir["assets"]
    end

    test do
        system "#{bin}/poetry --version"
    end
end
