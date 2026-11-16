cask "icuity" do
  version "0.1.0"
  sha256 "ec6d5e28bc3ad2fcffb70aed93b6942918dc8c2e89bebc9d1bfc1a37254dabf4"

  url "https://github.com/psca/Icuity/releases/download/v#{version}/Icuity-#{version}-universal.dmg"
  name "Icuity"
  desc "Native training calendar for intervals.icu"
  homepage "https://github.com/psca/Icuity"

  depends_on macos: :tahoe

  app "Icuity.app"

  caveats <<~EOS
    This preview is not Developer ID signed or notarized by Apple.
    macOS may block its first launch. If you trust this app, attempt to open it,
    then use System Settings > Privacy & Security > Open Anyway if offered.
  EOS
end
