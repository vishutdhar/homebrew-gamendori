cask "gamendori" do
  version "1.3,4"
  sha256 "421f7e790b621b2a001eea7168bbbbe9e7500833141bcf4dfe1c96e60e046bb1"

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

