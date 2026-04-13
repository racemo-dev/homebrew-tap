cask "racemo" do
  version "0.0.8"
  sha256 "f94617a84261579ca37401f87b057f3450bcce51f127f27358033cbc3e933cfc"

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
