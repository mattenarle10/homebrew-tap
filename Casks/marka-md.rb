cask "marka-md" do
  arch arm: "", intel: "_intel"

  version "1.5.16"
  sha256 arm:   "9ef6dd5c24d7f783c45d0e0e46c845a046c87e83ad8595a544943f02809301a6",
         intel: "9de3f8ff2e366b67f15ec21c0d6db40c2728eee8aa46845e8497268927353a4f"

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
