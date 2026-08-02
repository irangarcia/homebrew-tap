class Agentwho < Formula
  desc "Use the correct Claude and Codex account for every project"
  homepage "https://github.com/irangarcia/agentwho"
  license "MIT"

  bottle do
    root_url "https://github.com/irangarcia/homebrew-tap/releases/download/agentwho-0.1.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "0dcdaac430d107890f35a905d6f3375845cd28fe92a69fd225c0907402724cd3"
    sha256 cellar: :any_skip_relocation, sequoia:      "8f79687433c415124a44c925d3030d86ad5df60e503258232eb58aeb0b5f0dca"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "349fe5ec1dbd1e8535b4dc0c7b2e4c181a84f4b07b9c5de0986ebcb4c1b8e82c"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.2/agentwho_0.1.2_darwin_amd64.tar.gz"
    sha256 "70ec826513647b63383de2d89aa8b77424c4742fa59edb3591a48c096b54510d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.2/agentwho_0.1.2_darwin_arm64.tar.gz"
    sha256 "b79a71bc7c552d567b8265d1002735a2fa49614552ddb7417fdc97c5ba9f3287"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.2/agentwho_0.1.2_linux_amd64.tar.gz"
    sha256 "4c8bac686c7c3133b1493b4e0f1e4266b50e6b70fd780535d6cf4a1d47319431"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.2/agentwho_0.1.2_linux_arm64.tar.gz"
    sha256 "105cad3676b802a9d2c112ed937dc31c5c871a558ad80505bab5411456fb14eb"
  end

  def install
    bin.install "agentwho"
  end

  test do
    assert_match "agentwho #{version}", shell_output("#{bin}/agentwho version")
    assert_match "agentwho_prompt", shell_output("#{bin}/agentwho shell init zsh")
  end
end
