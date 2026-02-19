cask "work3s" do
  version "0.4.18"
  sha256 "85ecb7074c7217e775dba8322d82cca8426ef953ffe53daef7aba24093393eca"

  url "https://github.com/work3s/desktop/releases/download/v#{version}/Work3s_#{version}_aarch64.dmg"
  name "Work3s"
  desc "Git worktree management for macOS"
  homepage "https://github.com/work3s/desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Work3s.app"

  zap trash: [
    "~/Library/Application Support/com.work3s.desktop",
    "~/Library/Caches/com.work3s.desktop",
    "~/Library/Preferences/com.work3s.desktop.plist",
    "~/Library/Saved Application State/com.work3s.desktop.savedState",
  ]
end
