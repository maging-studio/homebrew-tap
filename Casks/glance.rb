cask "glance" do
  version "0.2.1"
  sha256 "b71d81620b63244206b3f12c3856947bb6542675cae7350d238065e27c3b8413"

  url "https://github.com/maging-studio/glance/releases/download/v#{version}/Glance-#{version}.dmg",
      verified: "github.com/maging-studio/glance/"
  name "Glance"
  desc "Native Markdown viewer and Quick Look extension"
  homepage "https://glance.md/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
