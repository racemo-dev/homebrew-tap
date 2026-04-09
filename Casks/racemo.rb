cask "racemo" do
  version "0.0.5"
  sha256 "4b48fd070d437ad5ee073326020dd2295b5c1da045ea95a9da94abfce12234f5"

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
