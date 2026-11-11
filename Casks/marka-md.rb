cask "marka-md" do
  arch intel: "_intel"

  version "1.7.11"
  sha256 arm:   "ed0177d09c40a90b384928312339af720a3481c07bd35af560bcb688e5f11a98",
         intel: "e25889834cec976e1da1988b96c53a3a798ef80214fc93d9e3e576bec49ba9eb"

  url "https://github.com/mattenarle10/markamd/releases/download/v#{version}/marka.md#{arch}.dmg",
      verified: "github.com/mattenarle10/markamd/"
  name "marka.md"
  desc "Local markdown editor for notes you share with AI"
  homepage "https://markamd.vercel.app/"

  livecheck do
    url "https://github.com/mattenarle10/markamd"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "marka.app"
  binary "#{appdir}/marka.app/Contents/Resources/cli/marka"

  zap trash: [
    "~/Library/Application Support/com.mattenarle.markamd",
    "~/Library/Caches/com.mattenarle.markamd",
    "~/Library/HTTPStorages/com.mattenarle.markamd",
    "~/Library/Preferences/com.mattenarle.markamd.plist",
    "~/Library/Saved Application State/com.mattenarle.markamd.savedState",
    "~/Library/WebKit/com.mattenarle.markamd",
  ]
end
