cask "brewbar" do
  version "0.9.1"
  sha256 "5ea46fb2437b56cb6973d33be06ba49ccca29b55029f6d9bdbff191911d26bbf"

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
