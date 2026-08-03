class Agentwho < Formula
  desc "Use the correct Claude and Codex account for every project"
  homepage "https://github.com/irangarcia/agentwho"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.7/agentwho_0.1.7_darwin_amd64.tar.gz"
    sha256 "950b5c86e3ad691dd623a48aea268f110005a4bca9ba2bb66f21d9eb9648e0fe"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.7/agentwho_0.1.7_darwin_arm64.tar.gz"
    sha256 "0114229ca2c79810017cf3e9f15506c58777fbe901606ebdc4234b9766b39ecc"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.7/agentwho_0.1.7_linux_amd64.tar.gz"
    sha256 "425e2c5fd2f845437e637c6843ad084d087da4e6e0adcbd123022795ecd5bdcb"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.7/agentwho_0.1.7_linux_arm64.tar.gz"
    sha256 "180618115a04dc3f81690973deb6797a7683b8eef0c506b449fe1b09c67e2dd9"
  end

  def install
    bin.install "agentwho"
  end

  test do
    assert_match "agentwho #{version}", shell_output("#{bin}/agentwho version")
    assert_match "agentwho_prompt", shell_output("#{bin}/agentwho shell init zsh")
  end
end
