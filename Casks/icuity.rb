cask "icuity" do
  version "0.2.2"
  sha256 "22e586774be7032e53390fe4525d96e7fd266da016b0daee252a6f3d8707603a"

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
