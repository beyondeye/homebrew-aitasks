class Aitasks < Formula
  desc "Agentic IDE in your terminal: markdown tasks, YAML frontmatter, git-native"
  homepage "https://aitasks.io/"
  url "https://github.com/beyondeye/aitasks/releases/download/v0.32.0/ait"
  sha256 "2a710d282e84ce0deaad73428dab21c67a71e970c9ea56afd2995d3a0a77e5db"
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
