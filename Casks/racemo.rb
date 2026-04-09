cask "racemo" do
  version "0.0.4"

  on_arm do
    sha256 "27b95a3505d45dd81c27f52ae01fdd2736b1684bf9fc982cd4c3bc72a2665213"
    url "https://github.com/racemo-dev/racemo/releases/download/v#{version}/Racemo_#{version}_Mac_aarch64.dmg"
  end

  on_intel do
    sha256 "593b8441691aab1bea7f155b60d2f767326a74bbb70d704c8c27e2d8832efe00"
    url "https://github.com/racemo-dev/racemo/releases/download/v#{version}/Racemo_#{version}_Mac_x64.dmg"
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
