cask "stillswitch" do
  version "1.0.16,98"
  sha256 "7b040b1bb58c8312c3e8fe7d6e0a5bf1ec4281bafaf6ad1fd89cf5d4374a2e23"

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
