class Agentwho < Formula
  desc "Use the correct Claude and Codex account for every project"
  homepage "https://github.com/irangarcia/agentwho"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.3/agentwho_0.1.3_darwin_amd64.tar.gz"
    sha256 "bf3df0343602ef17202533510e7efe4ef56f3ad41e6e0935c0f6f2068057d672"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.3/agentwho_0.1.3_darwin_arm64.tar.gz"
    sha256 "55ae49f6c69ea7abcf41a0f3de878cedf14cb91ddaef7b5d62c83597562d0ab0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.3/agentwho_0.1.3_linux_amd64.tar.gz"
    sha256 "f5e53295e4c201eff6bc4ba361059583a97930f0c1a1c63b6b7cba5654771c8d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.3/agentwho_0.1.3_linux_arm64.tar.gz"
    sha256 "9c6d692fe70545043941de1eb1f4af41ded982ec715596dd7c8860907270a258"
  end

  def install
    bin.install "agentwho"
  end

  test do
    assert_match "agentwho #{version}", shell_output("#{bin}/agentwho version")
    assert_match "agentwho_prompt", shell_output("#{bin}/agentwho shell init zsh")
  end
end
