class CodexSwap < Formula
  desc "Safely switch between named Codex CLI accounts"
  homepage "https://github.com/irangarcia/codex-swap"
  url "https://github.com/irangarcia/codex-swap/archive/refs/tags/0.2.0.tar.gz"
  sha256 "78975550465255b856b323711991dc2aaac9bf0785c6cec04c1d1a148e070880"
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
