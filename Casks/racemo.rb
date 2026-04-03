cask "racemo" do
  version "0.0.3"

  on_arm do
    sha256 "c7c8bb36135bf7dbecc9ceeed8ee07dd5c770b20d50a9e70bf4430bfe70a2a5a"
    url "https://github.com/racemo-dev/racemo-client/releases/download/v#{version}/Racemo_#{version}_Mac_aarch64.dmg"
  end

  on_intel do
    sha256 "3c23c95c1787423afeb656b58b0bce76cd3c7e76920ea38500e936e2de7dc057"
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
