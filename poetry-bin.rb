class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.1.5"
    revision 2
    license "MIT"
    bottle :unneeded

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.5-2/poetry-bin-1.1.5-2-x86_64-apple-darwin.tar.gz"
        sha256 "c4b46cf4476b9d6c20c616d7d790bd1b113d53d7684bd3f8bf380fa4ccd51516"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.5-2/poetry-bin-1.1.5-2-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "7cbd794f1ed6b763fbfc31076f77eee9aaa720da5d48711ffa3ea92b6a8a0abb"
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
