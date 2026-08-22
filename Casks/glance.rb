cask "glance" do
  version "0.2.2"
  sha256 "74548bcf5ff5217178528e44b2e3d397e3978542dadf111080da0862a0e5070a"

  url "https://github.com/maging-studio/glance/releases/download/v#{version}/Glance-#{version}.dmg",
      verified: "github.com/maging-studio/glance/"
  name "Glance"
  desc "Native Markdown viewer and Quick Look extension"
  homepage "https://glance.md/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Glance.app"

  zap trash: [
    "~/Library/Application Support/Glance",
    "~/Library/Caches/me.klim.Glance",
    "~/Library/Containers/me.klim.Glance.QuickLook",
    "~/Library/HTTPStorages/me.klim.Glance",
    "~/Library/Preferences/me.klim.Glance.plist",
    "~/Library/Saved Application State/me.klim.Glance.savedState",
  ]
end
