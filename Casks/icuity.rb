cask "icuity" do
  version "0.5.0"
  sha256 "3ea2719e84f239a1a601b5d15bdcaa183fb9e0af52b9681bad4067b49c9f9682"

  url "https://github.com/psca/icuity-releases/releases/download/v#{version}/Icuity-#{version}-universal.dmg"
  name "Icuity"
  desc "Native training calendar for intervals.icu"
  homepage "https://github.com/psca/icuity-releases"

  auto_updates true

  depends_on macos: :tahoe

  app "Icuity.app"

  caveats <<~EOS
    This preview is not Developer ID signed or notarized by Apple.
    macOS may block its first launch. If you trust this app, attempt to open it,
    then use System Settings > Privacy & Security > Open Anyway if offered.
  EOS
end
