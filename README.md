# RiftVM Homebrew tap

The official tap for [RiftVM](https://github.com/riftvm/riftvm), a native Apple silicon app that runs Omarchy Linux full screen with GPU-accelerated Custom VirGL graphics. RiftVM requires **macOS 27 or later** and an Apple silicon Mac.

```sh
brew install --cask riftvm/tap/riftvm
brew upgrade --cask riftvm
```

The cask installs `RiftVM.app` only. The `riftvm` command stays inside the app at `/Applications/RiftVM.app/Contents/Helpers/riftvm` and is not linked into your `PATH`.

The `riftvm` cask is added only after the exact App archive is Developer ID signed, notarized, downloaded and verified. Its version, URL and SHA-256 must match that immutable release. `scripts/publish-release.sh` in the main repository updates the cask automatically, so do not edit it by hand. This tap does not distribute factory images separately from the App's verified installation flow.
