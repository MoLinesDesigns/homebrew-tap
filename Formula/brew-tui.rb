class BrewTui < Formula
  desc "Visual TUI for Homebrew package management"
  homepage "https://github.com/MoLinesDesigns/Brew-TUI"
  url "https://registry.npmjs.org/brew-tui/-/brew-tui-1.1.0.tgz"
  sha256 "d70002428173095f3165b4d3b381fdf07dfb2428e859350145725850dfe5f79c"
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
