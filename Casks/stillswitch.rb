cask "stillswitch" do
  version "1.0.0,79"
  sha256 "0410bc75c08da31da3d785fd1fd97951f08efa44b73b0068c5ce74063659202f"

  url "https://stillswitch.app/downloads/v1/StillSwitch-#{version.csv.first}-#{version.csv.second}-arm64.zip"
  name "StillSwitch"
  desc "Native macOS window switcher with zero configuration"
  homepage "https://stillswitch.app/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "StillSwitch.app"

  uninstall quit: "app.stillswitch.mac"
end
