cask "racemo" do
  version "0.0.3"

  on_arm do
    sha256 "75314241b5affacb28e88594648c115e2e9bcc4578b29a07abfe09d1a7be7762"
    url "https://github.com/racemo-dev/racemo/releases/download/v#{version}/Racemo_#{version}_Mac_aarch64.dmg"
  end

  on_intel do
    sha256 "4711236771c944c3824c1d5a253ab780d8a6ee7a996c0fdead900f8a5cf14c27"
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
