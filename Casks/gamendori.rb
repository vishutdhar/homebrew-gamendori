cask "gamendori" do
  version "1.2,3"
  sha256 "ee42f73c9467deb1831a3f62124143b2ac116cdc359170c12a6b67326f5b7417"

  url "https://gamendori.com/downloads/Gamendori-#{version.csv.first}.dmg"
  name "Gamendori"
  desc "Screenshot tool with on-device detection and redaction"
  homepage "https://gamendori.com/"

  livecheck do
    url "https://gamendori.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Gamendori.app"

  zap trash: [
    "~/Library/Application Support/Gamendori",
    "~/Library/Caches/com.vishutdhar.gamendori",
    "~/Library/HTTPStorages/com.vishutdhar.gamendori",
    "~/Library/Preferences/com.vishutdhar.gamendori.plist",
    "~/Library/Saved Application State/com.vishutdhar.gamendori.savedState",
  ]
end
