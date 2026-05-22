cask "media-manager" do
  version "2026.5.1"
  sha256 "e3fb90bd461d53f571e2394be0e3613bbe04d9e3e16adfeab61cd93c1f56c71d"

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
