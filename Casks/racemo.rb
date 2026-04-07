cask "racemo" do
  version "0.0.3"

  on_arm do
    sha256 "28d9920d3e82d617dca44197be2601b93409b78495e4ea01eddc194ff87f64f5"
    url "https://github.com/racemo-dev/racemo/releases/download/v#{version}/Racemo_#{version}_Mac_aarch64.dmg"
  end

  on_intel do
    sha256 "b69e3ca671e503dd297e3d6c8dea96b87e6e619a0a8e20b74920d69fce906139"
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
