class Ocw < Formula
  desc "OpenCode Go workers for Codex-style orchestration"
  homepage "https://github.com/BenitoJD/OCW-CLI"
  url "https://github.com/BenitoJD/OCW-CLI/releases/download/v0.7.0-alpha/ocw-0.7.0-alpha.tar.gz"
  sha256 "566e590efb4767f490338bcfebe55a0aa1037e8ee3d18ea9bd3a5bc1bd6afaad"
  license "MIT"

  depends_on "git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/ocw" => "ocw"
  end

  def caveats
    <<~EOS
      OCW requires OpenCode on PATH for worker runs.
      Install Node.js separately if you want to run: ocw mcp
      Run: ocw doctor --deep
    EOS
  end

  test do
    assert_match "0.7.0-alpha", shell_output("#{bin}/ocw version")
  end
end
