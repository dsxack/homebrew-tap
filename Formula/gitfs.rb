# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Gitfs < Formula
  desc "FUSE filesystem for browsing contents of git repositories revisions."
  homepage "https://github.com/dsxack/gitfs"
  license "MIT"
  
  if Hardware::CPU.intel?
    url "https://github.com/dsxack/gitfs/releases/download/v1.4.3/gitfs_Darwin_x86_64.tar.gz"
    sha256 "666332a4b63b2d8c6d95a73d428e422abd0efa9de5f171a0d9a7d2332e7ec067"
  elsif Hardware::CPU.arm?
    url "https://github.com/dsxack/gitfs/releases/download/v1.4.3/gitfs_Darwin_arm64.tar.gz"
    sha256 "e09cad34502955884461fcb669ffe8af2a880fa43c9e0252c6fece1a82db75d6"
  end

  def install
    bin.install "gitfs"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test gitfs`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/gitfs", "version"
  end
end
