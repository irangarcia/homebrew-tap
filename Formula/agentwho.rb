class Agentwho < Formula
  desc "Use the correct Claude and Codex account for every project"
  homepage "https://github.com/irangarcia/agentwho"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.6/agentwho_0.1.6_darwin_amd64.tar.gz"
    sha256 "669a6f6b92ba802e7ab81880daa18596d175475268bdaf1a9b8eed78856673cd"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.6/agentwho_0.1.6_darwin_arm64.tar.gz"
    sha256 "77d25cb3887ab6a69be565a43ffcf8c0df5f9cbbddb4e32c66c72b493f964deb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.6/agentwho_0.1.6_linux_amd64.tar.gz"
    sha256 "64fc0bb637a68b51ae1cb2d5dbfb2ce34b54bb158bc1fd9c73200e1b8d4a0e98"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/irangarcia/agentwho/releases/download/v0.1.6/agentwho_0.1.6_linux_arm64.tar.gz"
    sha256 "fe10ea26369aea015911e2ff6f013f442f0c63c23c2f8de33a409dc5d6a5d6eb"
  end

  def install
    bin.install "agentwho"
  end

  test do
    assert_match "agentwho #{version}", shell_output("#{bin}/agentwho version")
    assert_match "agentwho_prompt", shell_output("#{bin}/agentwho shell init zsh")
  end
end
