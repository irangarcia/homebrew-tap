class Agentwho < Formula
  desc "Use the correct Claude and Codex account for every project"
  homepage "https://github.com/irangarcia/agentwho"
  license "MIT"

  bottle do
    root_url "https://github.com/irangarcia/homebrew-tap/releases/download/agentwho-0.1.5"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "371b15f49fae3cf368e68562db19332ddd2282e7391e78eae63ec8d44e0bf8f5"
    sha256 cellar: :any_skip_relocation, sequoia:      "000a04fe842f7b2c84e3d6578ac9d738e4b5f5b6114911963fbec65cf54d94ce"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "12741bff8a982b0970cae6da6b82416e24682c84dca19dff90bc76c71b55f523"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.5/agentwho_0.1.5_darwin_amd64.tar.gz"
    sha256 "18468360b4af4ff5d5e7b80a2d3b0ff0f7d77e2ce4fb22afc3c98b1c63b00deb"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.5/agentwho_0.1.5_darwin_arm64.tar.gz"
    sha256 "ee916beaa1d81b6ca9afc8a09f97a242bd30f0a76e90ac5428ff60f9475ffaf8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.5/agentwho_0.1.5_linux_amd64.tar.gz"
    sha256 "1bec359e30099c135cff5e4d721a7b0a9a73dc84037d4853a9e1316df5758e03"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.5/agentwho_0.1.5_linux_arm64.tar.gz"
    sha256 "65b0bec879c2ebe7fac599cb8734525438fde924d1e1b45f55a044b49e6fcaa4"
  end

  def install
    bin.install "agentwho"
  end

  test do
    assert_match "agentwho #{version}", shell_output("#{bin}/agentwho version")
    assert_match "agentwho_prompt", shell_output("#{bin}/agentwho shell init zsh")
  end
end
