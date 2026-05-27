class Aitasks < Formula
  desc "Agentic IDE in your terminal: markdown tasks, YAML frontmatter, git-native"
  homepage "https://aitasks.io/"
  url "https://github.com/beyondeye/aitasks/releases/download/v0.21.0/ait"
  sha256 "ad4e92f3fe00549f8fb4c92b977fd462bc4df02454270404cfc762dd516fb5bd"
  license "Apache-2.0"

  depends_on "bash"
  depends_on "python@3.12"
  depends_on "fzf"
  depends_on "jq"
  depends_on "git"
  depends_on "zstd"
  depends_on "curl"

  def install
    bin.install "ait"
  end

  test do
    output = shell_output("#{bin}/ait some-bogus-command 2>&1", 1)
    assert_match(/No ait project found/, output)
  end
end
