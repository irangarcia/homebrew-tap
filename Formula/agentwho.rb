class Agentwho < Formula
  desc "Use the correct Claude and Codex account for every project"
  homepage "https://github.com/irangarcia/agentwho"
  license "MIT"

  bottle do
    root_url "https://github.com/irangarcia/homebrew-tap/releases/download/agentwho-0.1.7"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "00b30ff7e5caaab9a459759d319a94d59321073f6ea88594615c443068e88c5e"
    sha256 cellar: :any_skip_relocation, sequoia:      "87cf22e28b96ba9b39079807b0c2fccb9436fbcefb57330d2176ecbdd7a46a11"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0ab1b6e62bed1b10ec6233f1e7c806c523ff527db915f61b0ecdfad38b148e0c"
  end

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
