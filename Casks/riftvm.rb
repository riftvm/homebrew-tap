# typed: strict
# frozen_string_literal: true

cask "riftvm" do
  version "0.1.0"
  sha256 "24b5dfd5b1dccddb6d048fdfa0e202e3884785738a578a1ae55f4a6cac84401d"

  url "https://github.com/riftvm/riftvm/releases/download/riftvm-v#{version}/RiftVM-#{version}.zip?notarized=1"
  name "RiftVM"
  desc "Simple native virtual machines for Apple silicon Macs"
  homepage "https://riftvm.com"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "RiftVM.app"
  binary "#{appdir}/RiftVM.app/Contents/Helpers/riftvm"

  zap trash: [
    "~/Library/Application Support/RiftVM",
    "~/Library/Preferences/com.riftvm.app.plist",
    "~/Library/Saved Application State/com.riftvm.app.savedState",
  ]
end
