cask "gamendori" do
  version "1.4.1,7"
  sha256 "cd194cb6026d674b3b41bc4a4a3e0d69944bee6370e3519dcb462125c2403ce8"

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


