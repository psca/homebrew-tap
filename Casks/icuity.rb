cask "icuity" do
  version "0.5.2"
  sha256 "638bd0046c43e95f5b8edcfd993be6663df61aa7c516051facbcf8bf6f359d99"

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
