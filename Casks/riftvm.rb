# typed: strict
# frozen_string_literal: true

cask "riftvm" do
  version "0.1.13"
  sha256 "39bb49a5d01f44c122e785eb156d40857f7c6f61f6e44951021a95a4a933d5eb"

  url "https://github.com/riftvm/riftvm/releases/download/riftvm-v#{version}/RiftVM-#{version}.zip?notarized=1"
  name "RiftVM"
  desc "Simple native virtual machines for Apple silicon Macs"
  homepage "https://riftvm.com"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "RiftVM.app"
  binary "#{appdir}/RiftVM.app/Contents/Helpers/riftvm"

  zap trash: [
    "~/Library/Application Support/RiftVM",
    "~/Library/Preferences/com.riftvm.app.plist",
    "~/Library/Saved Application State/com.riftvm.app.savedState",
  ]
end
