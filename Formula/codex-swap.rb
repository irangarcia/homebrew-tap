class CodexSwap < Formula
  desc "Safely switch between named Codex CLI accounts"
  homepage "https://github.com/irangarcia/codex-swap"
  url "https://github.com/irangarcia/codex-swap/archive/refs/tags/0.1.0.tar.gz"
  sha256 "3b014b9b3886fd705c6264a2dcb16f3012c1dfacaa8d2a4060083475fdac2060"
  license "MIT"

  depends_on "python@3.14"

  def install
    python = formula_opt_bin("python@3.14")/"python3.14"
    inreplace "codex-swap", "#!/usr/bin/env python3", "#!#{python}"
    bin.install "codex-swap"
  end

  test do
    assert_match "codex-swap #{version}", shell_output("#{bin}/codex-swap --version")
  end
end
