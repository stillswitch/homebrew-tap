# StillSwitch for Homebrew

The official Homebrew tap for [StillSwitch](https://stillswitch.app/), a native macOS window switcher with zero configuration.

Requires an Apple Silicon Mac running macOS 15 or later.

```sh
brew install stillswitch/tap/stillswitch
```

Open StillSwitch from Applications and allow Accessibility to switch windows. Allow Screen Recording for local window previews. See the [Guide & FAQ](https://stillswitch.app/guide/) for installation, licensing, and support.

Try all features free for 14 days. A one-time purchase covers StillSwitch 1.x on up to three Macs; no subscription.

StillSwitch includes automatic updates. To check through Homebrew instead:

```sh
brew update
brew upgrade --cask --greedy stillswitch
```

This repository contains only the public distribution recipe. Downloads come from the official StillSwitch website and are signed and notarized for macOS.

The distribution server counts archive requests with a Homebrew source label; it does not report whether installation completed. No analytics code is added to this cask or the Mac app. See the [website privacy notice](https://stillswitch.app/privacy/) for details.
