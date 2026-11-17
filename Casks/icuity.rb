cask "icuity" do
  version "0.2.0"
  sha256 "a07a5d1927a9bf8238b79fb9a0f5df949a1640060599957ef8e0043bb518965c"

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
