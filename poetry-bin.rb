class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.1.4"
    revision 1
    license "MIT"
    bottle :unneeded

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.4-1/poetry-bin-1.1.4-1-x86_64-apple-darwin.tar.gz"
        sha256 "b370161c215109a64c44b4dadf7ddac7fc818c40f65e81a730bbed897f6c7ef3"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.4-1/poetry-bin-1.1.4-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "a6a99a17b0ed984687180e804289db7f8d60795ee417c9dbb96d622f75a0d2a3"
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
