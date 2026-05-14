class BrewTui < Formula
  desc "Visual TUI for Homebrew package management"
  homepage "https://github.com/MoLinesDesigns/Brew-TUI"
  url "https://registry.npmjs.org/brew-tui/-/brew-tui-0.9.1.tgz"
  sha256 "b5f734f6cc8d591870bc494b07e01dbaa2a787409627eed85df0e354c8dc76b7"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/brew-tui"
  end

  test do
    assert_match "Plan:", shell_output("#{bin}/brew-tui status")
  end
end
