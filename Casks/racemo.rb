cask "racemo" do
  version "0.0.3"

  on_arm do
    sha256 "c7f52786678972c98625f6416a9b09f7b2553cb36ab255bc2117f03c67811045"
    url "https://github.com/racemo-dev/racemo-client/releases/download/v#{version}/Racemo_#{version}_Mac_aarch64.dmg"
  end

  on_intel do
    sha256 "00e89c17f461020d821d0eb565dc88e5a2d5f490039d6f5a7112419e863e923e"
    url "https://github.com/racemo-dev/racemo-client/releases/download/v#{version}/Racemo_#{version}_Mac_x64.dmg"
  end

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
