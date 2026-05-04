class Ocw < Formula
  desc "OpenCode Go workers for Codex-style orchestration"
  homepage "https://github.com/BenitoJD/OCW-CLI"
  url "https://github.com/BenitoJD/OCW-CLI/releases/download/v0.7.0-alpha/ocw-0.7.0-alpha.tar.gz"
  sha256 "f1e65fd8bc413bd3e4b2c091a63c459f7338811cd24152e83115b9cba2c7e760"
  license "MIT"

  depends_on "git"
  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/ocw" => "ocw"
  end

  def caveats
    <<~EOS
      OCW requires OpenCode on PATH for worker runs.
      Run: ocw doctor --deep
    EOS
  end

  test do
    assert_match "0.7.0-alpha", shell_output("#{bin}/ocw version")
  end
end
