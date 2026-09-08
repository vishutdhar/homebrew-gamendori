cask "gamendori" do
  version "1.3.1,5"
  sha256 "01773b41c4328b58d84ff6a9eae653d7db2d5ca78ac1fbe8f2bbbdd96e140d88"

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


