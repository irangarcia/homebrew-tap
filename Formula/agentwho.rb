class Agentwho < Formula
  desc "Use the correct Claude and Codex account for every project"
  homepage "https://github.com/irangarcia/agentwho"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.0/agentwho_0.1.0_darwin_amd64.tar.gz"
    sha256 "202f7f2a7615955d81873be9214aa33bedace023acc934e3137cbbd5687203a2"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.0/agentwho_0.1.0_darwin_arm64.tar.gz"
    sha256 "4b1602c605df430876d6b81a00525dcda3f0eb51d594af611c0c019f1c654dca"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.0/agentwho_0.1.0_linux_amd64.tar.gz"
    sha256 "a76309f087bc9132a54fe7030741607bbda56612c66ca11445b0ae84546aa3dd"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.0/agentwho_0.1.0_linux_arm64.tar.gz"
    sha256 "68b752b9dc4c6a1be4d4869037444d0f874be2034534f3635b75fea269713f7f"
  end

  def install
    bin.install "agentwho"
  end

  test do
    assert_match "agentwho #{version}", shell_output("#{bin}/agentwho version")
    assert_match "agentwho_prompt", shell_output("#{bin}/agentwho shell init zsh")
  end
end
