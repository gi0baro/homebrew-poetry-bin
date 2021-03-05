class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.1.5"
    revision 1
    license "MIT"
    bottle :unneeded

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.5-1/poetry-bin-1.1.5-1-x86_64-apple-darwin.tar.gz"
        sha256 "3cd2c61fffdecf104151654477b1a8cb9b98518994411112966af9aa77d37fac"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.5-1/poetry-bin-1.1.5-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "645478c82e6f40f3ea044447e41826bd9aec08e45239febe2b685649758a4ff8"
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
