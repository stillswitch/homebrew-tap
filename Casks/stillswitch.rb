cask "stillswitch" do
  version "1.0.6,87"
  sha256 "738e58fed4806b77161c8288d2a6c68b59d8c040b8e5544dca941ba308829863"

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
