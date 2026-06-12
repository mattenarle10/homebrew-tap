cask "marka-md" do
  arch arm: "", intel: "_intel"

  version "1.5.9"
  sha256 arm:   "b6a6066509310f086d0800f8d5e107d1fad689865f759b8cb75c3715e13ba396",
         intel: "5ca0bfd4643a415e1300e8f36192831772a576e5acb608ab0155aca11491a20d"

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

  app "marka.md.app"

  zap trash: [
    "~/Library/Application Support/com.mattenarle.markamd",
    "~/Library/Caches/com.mattenarle.markamd",
    "~/Library/HTTPStorages/com.mattenarle.markamd",
    "~/Library/Preferences/com.mattenarle.markamd.plist",
    "~/Library/Saved Application State/com.mattenarle.markamd.savedState",
    "~/Library/WebKit/com.mattenarle.markamd",
  ]
end
