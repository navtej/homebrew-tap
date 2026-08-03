cask "media-manager" do
  version "2026.08.03.0"
  sha256 "66fc1ffed8eaba6759be01275fd996c22d1da585d91fed20ea16867b8a411a7a"

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
