cask "icuity" do
  version "0.3.0"
  sha256 "ff5dc4285dec4cf1adb2999fe91142a23075c8be51e9909ae47b36d0da9dfe65"

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
