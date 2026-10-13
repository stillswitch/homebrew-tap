cask "stillswitch" do
  version "1.0.1,82"
  sha256 "860fcd90172263a0ab80d93545bfcdd55c49c160c2d79b2a737ce2baf171f03c"

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
