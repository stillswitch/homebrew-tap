cask "stillswitch" do
  version "1.0.12,94"
  sha256 "d9b9c78ebc65c0c2da4bec1f6de75fe4c1c2c39b5d508e75979d8c011c820176"

  url "https://stillswitch.app/downloads/v1/StillSwitch-#{version.csv.first}-#{version.csv.second}-arm64.zip?source=homebrew"
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
