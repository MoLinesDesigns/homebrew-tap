cask "brewbar" do
  version "1.1.0"
  sha256 "825ffacb02b5a803232da6ba55fca167fee54dd73b3e491f8a5b21e34eb5308d"

  url "https://github.com/MoLinesDesigns/Brew-TUI/releases/download/v#{version}/BrewBar.app.zip"
  name "BrewBar"
  desc "macOS menu bar companion for Brew-TUI (Pro feature)"
  homepage "https://github.com/MoLinesDesigns/Brew-TUI"

  depends_on formula: "brew-tui"
  depends_on macos: ">= :sonoma"

  app "BrewBar.app"

  zap trash: [
    "~/Library/Preferences/com.molinesdesigns.brewbar.plist",
  ]
end
