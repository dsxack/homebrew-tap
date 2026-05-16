# typed: false
# frozen_string_literal: true

cask "screen-loop" do
  version "0.8.0"
  sha256 "f80a0eb4fa3980213a3cd155594af07d9a531a7dd71dbfc86d6a60fb85170dc6"

  url "https://github.com/dsxack/screen-loop/releases/download/v#{version}/ScreenLoop-0.8.0-macos-universal.zip"
  name "Screen Loop"
  desc "Menu bar screen recorder with a rolling buffer for saving recent history"
  homepage "https://github.com/dsxack/screen-loop"

  depends_on macos: :sonoma

  app "Screen Loop.app"

  uninstall quit:       "com.dsxack.screen-loop",
            login_item: "Screen Loop"

  zap trash: [
    "~/Library/Application Support/Screen Loop",
    "~/Library/Preferences/com.dsxack.screen-loop.plist",
    "~/Movies/Screen Loop",
  ]

  caveats <<~EOS
    Screen Loop is not signed or notarized yet. If macOS blocks the first launch,
    remove quarantine manually:

      xattr -dr com.apple.quarantine "#{appdir}/Screen Loop.app"
  EOS
end
