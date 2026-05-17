cask "brewbar" do
  version "1.2.0"
  sha256 "601136b722f15ec7628574c71a99ce3a744f938f5abfeead6f958c6b9f4e5e5e"

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
