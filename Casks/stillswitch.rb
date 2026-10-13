cask "stillswitch" do
  version "1.0.2,83"
  sha256 "917313fb11da2f8fe4502759cecd7b11e9cc733127a8b88db29dcdfbf18ffc81"

  url "https://stillswitch.app/downloads/v1/StillSwitch-#{version.csv.first}-#{version.csv.second}-arm64.zip"
  name "StillSwitch"
  desc "Window switcher with zero configuration"
  homepage "https://stillswitch.app/"

  livecheck do
    url "https://stillswitch.app/updates/v1/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "StillSwitch.app"

  uninstall quit: "app.stillswitch.mac"
end
