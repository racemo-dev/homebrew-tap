cask "racemo" do
  version "0.0.2"
  sha256 "3f7d889d174f6f5f9eb7e7f7ec20209b94f5a126887e446ae3f6a7a0683d329c"

  url "https://github.com/racemo-dev/racemo-client/releases/download/v#{version}/Racemo_#{version}_Mac_universal.dmg"
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
