cask "media-manager" do
  version "2026.06.22.0"
  sha256 "bcfd3d02124f8454710f1d74d2c6fa1a14747d023dce34f79d32aa8d12ad6edc"

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
