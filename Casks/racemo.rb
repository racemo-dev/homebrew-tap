cask "racemo" do
  version "0.0.5"
  sha256 "2f9386b6d79f57002c0a4b571c0b4fd76c32be5b592d13d328f80b3f17140464"

  url "https://github.com/racemo-dev/racemo/releases/download/v#{version}/Racemo_#{version}_Mac.dmg"
  name "Racemo"
  desc "Desktop-native terminal multiplexer built with Rust and Tauri"
  homepage "https://github.com/racemo-dev/racemo"

  depends_on macos: ">= :ventura"

  app "Racemo.app"

  zap trash: [
    "~/Library/Application Support/com.racemo.app",
    "~/Library/Caches/com.racemo.app",
    "~/Library/Logs/com.racemo.app",
    "~/Library/Preferences/com.racemo.app.plist",
  ]
end
