cask "glance" do
  version "0.3.0"
  sha256 "711db7c0cbb8166d1d46af0370d2c2f2ed62e839aa82fe49fd9c532a39cdc3ad"

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
