cask "brewbar" do
  version "1.1.0"
  sha256 "c7d23f7ccce2ddd8907dbcf1964696f1be62a13f09686fb8671962c695760af6"

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
