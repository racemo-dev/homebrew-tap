cask "racemo" do
  version "0.0.1"
  sha256 "5fc119febb6dbc3c700d35abac24d537f40e714946450c998f329f732cb18ee8"

  url "https://github.com/racemo-dev/racemo-releases/releases/download/v#{version}/Racemo_#{version}_aarch64.dmg"
  name "Racemo"
  desc "Desktop-native terminal multiplexer built with Rust and Tauri"
  homepage "https://github.com/racemo-dev/racemo"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Racemo.app"

  zap trash: [
    "~/Library/Application Support/com.racemo.app",
    "~/Library/Caches/com.racemo.app",
    "~/Library/Logs/com.racemo.app",
    "~/Library/Preferences/com.racemo.app.plist",
  ]
end
