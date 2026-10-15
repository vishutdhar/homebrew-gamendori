cask "gamendori" do
  version "1.5,8"
  sha256 "aa408b4330f8c33b01bd6381efe54a38034ed59c2410aa1496a279ae3a84fc19"

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


