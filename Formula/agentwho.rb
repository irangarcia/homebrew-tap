class Agentwho < Formula
  desc "Use the correct Claude and Codex account for every project"
  homepage "https://github.com/irangarcia/agentwho"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.1/agentwho_0.1.1_darwin_amd64.tar.gz"
    sha256 "b807a5d327fff5a3b5e0a314bd1a95683624610602defcc98f1e360a65cc8389"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.1/agentwho_0.1.1_darwin_arm64.tar.gz"
    sha256 "b7f83c0211d404ee9df6b3c463a0df6f417a60f6c0deaf86f417a5af71b286bb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.1/agentwho_0.1.1_linux_amd64.tar.gz"
    sha256 "e47b2900b61a0b2eae8a76478a88f1891b3ecaeab0bd4913362713fd8d0ffe59"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.1/agentwho_0.1.1_linux_arm64.tar.gz"
    sha256 "870c1932a2aa89aa4ad0584470732c647e1affff71109ab3a9247189cd2960c8"
  end

  def install
    bin.install "agentwho"
  end

  test do
    assert_match "agentwho #{version}", shell_output("#{bin}/agentwho version")
    assert_match "agentwho_prompt", shell_output("#{bin}/agentwho shell init zsh")
  end
end
