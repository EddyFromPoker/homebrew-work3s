cask "work3s" do
  version "0.1.31"
  sha256 "774b6040427380a65aaf0279535a2fd9e469cf42fd7a2599a2296087daef54e6"

  url "https://github.com/EddyFromPoker/work3s-desktop/releases/download/v#{version}/Work3s_#{version}_aarch64.dmg"
  name "Work3s"
  desc "Git worktree management for macOS"
  homepage "https://github.com/EddyFromPoker/work3s-desktop"

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
