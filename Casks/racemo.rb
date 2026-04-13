cask "racemo" do
  version "0.0.8"
  sha256 "b56b2e1d6b92aa000c609a14245986aeb2775c840d37b6b26c993c85f16e9709"

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
