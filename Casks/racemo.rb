cask "racemo" do
  version "0.0.6"
  sha256 "aeefd96e594c16dfa22c053d456842097b9e5b621e9e24983bf797daf53d5a39"

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
