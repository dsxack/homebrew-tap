# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gitfs < Formula
  desc "FUSE filesystem for browsing contents of git repositories revisions"
  homepage "https://github.com/dsxack/gitfs"
  version "1.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dsxack/gitfs/releases/download/v1.4.5/gitfs_Darwin_x86_64.tar.gz"
      sha256 "498125aa1ac9967e1d445ed74f974eba62c138edbee9fb2bbb4862d6f8cd8381"

      def install
        bin.install "gitfs"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dsxack/gitfs/releases/download/v1.4.5/gitfs_Darwin_arm64.tar.gz"
      sha256 "219d784ff26110eb61cc065fa21dca0eeb65ebb4639f15f74fb7c62b83529212"

      def install
        bin.install "gitfs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dsxack/gitfs/releases/download/v1.4.5/gitfs_Linux_x86_64.tar.gz"
      sha256 "49a462aaf27f5596fbd02fb05d37ad7785faa386a5fece689912cd0527ee03f1"

      def install
        bin.install "gitfs"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dsxack/gitfs/releases/download/v1.4.5/gitfs_Linux_arm64.tar.gz"
      sha256 "b2c66a60136c0f4d368205b3ee2c39a3f43d879b6703ad66183bf563188df6d0"

      def install
        bin.install "gitfs"
      end
    end
  end

  depends_on cask: "osxfuse" if OS.mac?
  depends_on "libfuse" if OS.linux?

  test do
    system "#{bin}/gitfs", "version"
  end
end
