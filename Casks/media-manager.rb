cask "media-manager" do
  version "2026.10.14.0"
  sha256 "be924145770978599711377c1c05893ae9fd6c9263b6d5fbcb98b90046798e9d"

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
