class Ocw < Formula
  desc "OpenCode Go workers for Codex-style orchestration"
  homepage "https://github.com/BenitoJD/OCW-CLI"
  url "https://github.com/BenitoJD/OCW-CLI/releases/download/v0.7.1-alpha/ocw-0.7.1-alpha.tar.gz"
  sha256 "06d3b7b11af5b16b6bf48646421f416b387db54b97a2360a7ed50291566e9f41"
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
      Troubleshoot Homebrew stalls with: ocw homebrew doctor
      Run: ocw doctor --deep
    EOS
  end

  test do
    assert_match "0.7.1-alpha", shell_output("#{bin}/ocw version")
  end
end
