cask "media-manager" do
  version "2026.09.16.1"
  sha256 "707f93d7451eb94816e87b4b0fd3fec530ff79dd56b128ad688457d57b3681da"

  url "https://github.com/navtej/media_manager/releases/download/v#{version}/MovieManager-#{version}-macos-arm64.dmg"
  name "Media Manager"
  desc "Organize and manage local video libraries"
  homepage "https://github.com/navtej/media_manager"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Media Manager.app"

  zap trash: [
    "~/Library/Application Support/com.example.movieManager",
    "~/Library/Preferences/com.example.movieManager.plist",
    "~/Library/Saved Application State/com.example.movieManager.savedState",
  ]
end
